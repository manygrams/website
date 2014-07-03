---
layout: post
title: Paint Colour and Junk Cars (Part 1, Correlation)
date: '2013-03-09 20:46:39 -0500'
---

### Introduction

A friend referred me to an [article](http://www.npr.org/2013/03/07/173176488/the-big-data-revolution-how-number-crunchers-can-predict-our-lives) on using big data to find various correlations in the real world. One such interesting correlation is that orange cars tend to be less prone to breakdowns. I thought it would be interesting to attempt to recreate this with the data set that powers Carbitrage, so here I go.


### Methodology
I start by classifying individual listing information as "junk/parts/scrap" and "not junk/parts/scrap" by searching for each in the title and description. People often list non-functioning cars when they break down as an attempt to get a little bit of cash for the scrap metal or parts. To avoid catching working cars that had these words in their title/description, I also limited the search to items priced under $1000.

For technical reasons, I had to remove pink, purple, and teal cars from the analysis, as I currently do not have enough data on these colour cars. When performing the bootstrapping (explained in the next paragraph), often the resampled dataset would have no observations with these paint colours, meaning that Pearson's correlation coefficient couldn't be calculated.

The method of analysis I performed was [bootstrap](http://en.wikipedia.org/wiki/Bootstrapping_(statistics)) sampling of Pearson's correlation coefficient. Bootstrap sampling is simply a method of estimating a statistic (in this case, correlation) by repeatedly resampling the original dataset with replacement and then calculating the statistic on the resampled dataset. A justification for the validity of bootstrap sampling is provided in L. Wasserman's excellent book _All of Statistics_. The recommended number of resamplings is really just as many as you can do with the computing power available. In my case, I did 100000 resamplings, which took about 12 minutes for my parallelized code to run on 4 cores. This is probably overkill, but it certainly doesn't hurt.

After the bootstrapped sample of correlations between each colour and "junk/parts/scrap" was returned, I simply estimated the 90% bootstrap percentile confidence interval, with which I am able to make my conclusions.

### Results

In total, I was able to keep 20 649 observations of car listings for the analysis. See the bar chart below for a breakdown of number of cars of each colour. As is visible, the number of purple, teal, and pink cars are all low.

<img alt="The above bar chart shows the number of cars of each colour in my dataset." src="http://nicolasevans.org/wp-content/uploads/2013/03/occurence.png" width="100%" />

The above bar chart shows the number of cars of each colour in my dataset. Below is a cross-tabulation plot of the proportion of junk cars for each colour. We can already see that there is some kind of relationship between junk cars and green, yellow, and burgundy colours, as their squares are thin (few cars in that colour) but tall (high proportion of junk cars).

<img alt="This cross-tabulation plot shows the proportion of junk cars for each paint colour." src="http://nicolasevans.org/wp-content/uploads/2013/03/crosstab.png" width="100%" />

This cross-tabulation plot shows the proportion of junk cars for each paint colour. After calculating the bootstrap confidence interval, I ordered the colours by average correlation coefficient and then plotted a confidence interval plot. The confidence interval plot is shown below.

<img alt="Bootstraped correlation coefficient for paint colour and junk car listing." src="http://nicolasevans.org/wp-content/uploads/2013/03/junk_car_and_colour.png" width="100%" />

Bootstrapped correlation coefficient for paint colour and junk car listing.[/caption]We can see that the correlation between an observation being a junk listing and green, yellow, burgundy, and blue, white, silver, and grey paint colours are statistically different from zero at a 0.1 confidence level. Green, yellow, and burgundy are all statistically above zero, while white, silver, and grey are all below zero. It appears that correlation between orange paint colour and being a junk listing is centered almost exactly on zero.

### Conclusion

While my dataset did show that there is some significant correlation between whether a listing is a junk car and its body paint colour, we are not really able to replicate the original analysis, as my dataset is different than the one used in the analysis mentioned by the article.</p>

### Next Time

For the next part of this article, I plan to perform an analysis of the proportion of junk cars within each different class of paint colour. For a third part, I plan on performing probit (binary) regression on the same data.

### R Code

{% highlight r %}

rm(list=ls())
library(stringr)
library(RMySQL)
library(snow)
con<-dbConnect("MySQL", host="****", user="****", pass="****", db="****")
ct<-dbGetQuery(con,"SELECT * FROM vehicles;")

ct<-ct[ct$colour!="Teal" & ct$colour!="Pink" & ct$colour!="Purple" &
       ct$colour!="Other" & !is.na(ct$colour) &
       !grepl("wanted",tolower(ct$title)),]

ct$colour<-factor(ct$colour)

ct$parts<-0
ct[intersect(Reduce(union,list(
   grep("junk",tolower(ct$desc))
  ,grep("junk",tolower(ct$title))
  ,grep("part",tolower(ct$desc))
  ,grep("part",tolower(ct$title))
  ,grep("scrap",tolower(ct$title))
  ,grep("scrap",tolower(ct$desc))
   )),which(ct$price<1000)),"parts"]<-1

m<-diag(nlevels(factor(ct$colour)))[factor(ct$colour),]
m<-cbind(m,ct$parts)
colnames(m)<-c(levels(ct$colour),"parts")
m<-data.frame(m)

c<-matrix(numeric(0),0,ncol(m)-1)
colnames(c)<-colnames(m)[1:ncol(m)-1]

bootstrap_cor<-function(m,n) {
  boot_cor<-matrix(numeric(0),0,ncol(m)-1)
  for(i in 1:n) {
    resamp<-m[sample(1:nrow(m),size=nrow(m),replace=TRUE),]
    cor_c<-c()
    for(i in 1:(ncol(m)-1))
      cor_c<-c(cor_c,cor(resamp[,i],resamp[,ncol(resamp)]))
    boot_cor<-rbind(boot_cor,cor_c)
  }
  return(boot_cor)
}

cl<-makeCluster(4)
clusterSetupSPRNG(cl)
starttime<-Sys.time()
c<-clusterCall(cl,bootstrap_cor,m,25000)
endtime<-Sys.time()
endtime-starttime
stopCluster(cl)
z<-rbind(c[[1]],c[[2]])
z<-rbind(z,c[[3]])
z<-rbind(z,c[[4]])

c<-data.frame(z)
colnames(c)<-colnames(m)[1:ncol(m)-1]

col<-l<-u<-mean<-c()

for(i in 1:ncol(c)) {
  col<-c(col,colnames(c)[i])
  l<-c(l,quantile(c[,i],probs=.05))
  u<-c(u,quantile(c[,i],probs=.95))
  mean<-c(mean,mean(c[,i]))
}
cor_df<-data.frame(col=col,l=l,u=u,m=mean)
cor_df<-cor_df[order(cor_df$m,decreasing=TRUE),]
x=1:ncol(c)-1

plot(cor_df$m~x, ylab="Correlation", xlab="",xaxt="n",
     main="Parts Car vs. Colour", ylim=c(-.03,.055))
par(las=3)
axis(1,at=x,labels=cor_df$col)
arrows(x0=x,y0=cor_df$l,x1=x,y1=cor_df$u,code=3,length=.05,angle=90)
abline(a=0,b=0)

{% endhighlight %}
