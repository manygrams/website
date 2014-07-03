---
layout: post
title: Potential for Arbitrage with Compact Sedans
date: '2013-03-30 16:32:22 -0400'
---

### Introduction

Imagine this: you are travelling from one city to another. You absolutely hate taking the bus, but you find it too expensive to rent a car. Wouldn't it be nice if you could somehow mix the convenience of driving with the economy of taking a bus? Maybe you can.

One thing that becomes quite apparent when estimating the prices of cars is that different cities have fairly different prices, sometimes starkly different. For example, cars in Calgary are much more expensive than cars in Ottawa or Toronto. However, due to some basic economics theories on arbitrage and the cost of travelling between the cities, we would think this would be close to impossible to turn a profit from arbitrage. I aim to prove that it is feasible to buy a car in Ottawa or Toronto and sell it in Calgary for profit.


### Methodology

To simplify calculating expected profit between city A and city B, we need to make a few (potentially limiting) assumptions:

- You can buy enough gas in city A at the average price in city A to get you all the way to city B;
- The additional mileage incurred driving from city A to city B will not significantly change the price of the car;
- The car purchased is liquid in both cities (ie. you can buy one at a moments notice in city A and sell it as soon as you get to city B); and,
- There are no costs (opportunity or otherwise) involved in buying/selling the car (ie. you don't have to get it certified and you don't have a day job)

Clearly these assumptions are not entirely realistic, but I believe they will not change the conclusions. This is subject matter for a future post.

For the purposes of this article, I'm limiting the cars analyzed to five comparable compact sedans, and assuming they are Black Automatic cars made in 2003 with 170000km on the odometer. Also, due to limited data for other cities, I'm focusing today's analysis to Ottawa, Toronto, and Calgary. I hope to expand this analysis to other Canadian cities, and even automate this process so that a daily 'arbitrage index' can be published.

To calculate the potential for arbitrage, I will estimate the profit of buying a car in one city and selling it in another, taking into account the cost of gasoline.

### Data

My work assumes the following distances from each city in hundreds of kilometers. Each cell represents the distance from the city listed in the column header to the distance listed in the row header. I have taken this data from a quick Google Maps direction search.


|            | Ottawa | Toronto | Calgary |
| ---------: | :----: | :-----: | :-----: |
| _Ottawa_   | 0      | 4.5     | 33.36   |
| _Toronto_  | 4.5    | 0       | 34.03   |
| _Calgary_  | 33.36  | 34.03   | 0       |

As mentioned above, I will be limiting today's analysis to five comparable compact sedans. For each car, I have converted highway fuel efficiency in MPG (found [here](http://www.fueleconomy.gov/feg/findacar.shtml)) to L/100km for the 2003 automatic transmission version of each car. Assumed fuel efficiency is shown in the table below.


| __Model__        | L/100km |
| :--------------: | :-----: |
| _Honda Civic_    | 6.53374 |
| _Toyota Corolla_ | 6.91808 |
| _Ford Focus_     | 7.84049 |
| _Chevy Cavalier_ | 7.84049 |
| _Mazda Protégé_  | 8.40052 |

I have also gathered yesterdays average gas prices from in Ottawa, Calgary, and Toronto, (through Google searching) and have them listed them in the table below in Canadian dollars per litre.

| __Date__      | Ottawa  | Calgary | Toronto |
| :-----------: | :-----: | :-----: | :-----: |
| _2013-03-29_  | 1.23331 | 1.13478 | 1.27896 |

<p>Using this data, I then estimated the price to travel from one city to another for each car and listed the estimated prices in the table below. The price estimate is for purchasing all required fuel in the city listed in the column header and then driving all the way to the city listed in the row header.</p>
<table>
<tbody>
<tr>
<td><strong>Civic</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td><em>Ottawa</em></td>
<td>0.00</td>
<td>247.34</td>
<td>37.60</td>
</tr>
<tr>
<td><em>Calgary</em></td>
<td>268.82</td>
<td>0.00</td>
<td>284.37</td>
</tr>
<tr>
<td><em>Toronto</em></td>
<td>36.26</td>
<td>252.31</td>
<td>0.00</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><strong>Corolla</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td><em>Ottawa</em></td>
<td>0.00</td>
<td>261.89</td>
<td>39.82</td>
</tr>
<tr>
<td><em>Calgary</em></td>
<td>284.63</td>
<td>0.00</td>
<td>301.10</td>
</tr>
<tr>
<td><em>Toronto</em></td>
<td>38.39</td>
<td>267.15</td>
<td>0.00</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><strong>Focus</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td><em>Ottawa</em></td>
<td>0.00</td>
<td>296.81</td>
<td>45.12</td>
</tr>
<tr>
<td><em>Calgary</em></td>
<td>322.58</td>
<td>0.00</td>
<td>341.24</td>
</tr>
<tr>
<td><em>Toronto</em></td>
<td>43.51</td>
<td>302.77</td>
<td>0.00</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><strong>Cavalier</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td>Ottawa</td>
<td>0.00</td>
<td>296.81</td>
<td>45.12</td>
</tr>
<tr>
<td>Calgary</td>
<td>322.58</td>
<td>0.00</td>
<td>341.24</td>
</tr>
<tr>
<td>Toronto</td>
<td>43.51</td>
<td>302.77</td>
<td>0.00</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><strong>Protégé</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td><em>Ottawa</em></td>
<td>0.00</td>
<td>318.01</td>
<td>48.35</td>
</tr>
<tr>
<td><em>Calgary</em></td>
<td>345.62</td>
<td>0.00</td>
<td>365.62</td>
</tr>
<tr>
<td><em>Toronto</em></td>
<td>46.62</td>
<td>324.40</td>
<td>0.00</td>
</tr>
</tbody>
</table>
<p>Also, using Carbitrage's estimates from today, I have estimated the prices of each car in each city and listed them below.</p>
<table>
<tbody>
<tr>
<td></td>
<td><strong>Ottawa</strong></td>
<td><strong>Calgary</strong></td>
<td><strong>Toronto</strong></td>
</tr>
<tr>
<td><em>Civic</em></td>
<td>4116</td>
<td>4947</td>
<td>4198</td>
</tr>
<tr>
<td><em>Corolla</em></td>
<td>3900</td>
<td>4710</td>
<td>3980</td>
</tr>
<tr>
<td><em>Focus</em></td>
<td>2358</td>
<td>2996</td>
<td>2420</td>
</tr>
<tr>
<td><em>Cavalier</em></td>
<td>2538</td>
<td>3199</td>
<td>2603</td>
</tr>
<tr>
<td><em>Protégé</em></td>
<td>3401</td>
<td>4160</td>
<td>3476</td>
</tr>
</tbody>
</table>
<p>Now, we are ready to estimate the expected profit, and thus the potential for arbitrage.</p>
<h3>Results</h3>
<p>The expected profits ($latex price_{B} - price_{A} - cost_{gas}$) are listed in the table below.</p>
<table>
<tbody>
<tr>
<td><strong>Civic</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td><em>Ottawa</em></td>
<td>0</td>
<td>-1078.34</td>
<td>-119.60</td>
</tr>
<tr>
<td><em>Calgary</em></td>
<td>562.18</td>
<td>0</td>
<td>464.63</td>
</tr>
<tr>
<td><em>Toronto</em></td>
<td>45.74</td>
<td>-1001.31</td>
<td>0</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><strong>Corolla</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td><em>Ottawa</em></td>
<td>0</td>
<td>-1071.89</td>
<td>-121.82</td>
</tr>
<tr>
<td><em>Calgary</em></td>
<td>541.18</td>
<td>0</td>
<td>428.90</td>
</tr>
<tr>
<td><em>Toronto</em></td>
<td>43.74</td>
<td>-997.15</td>
<td>0</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><strong>Focus</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td><em>Ottawa</em></td>
<td>0</td>
<td>-934.81</td>
<td>-107.12</td>
</tr>
<tr>
<td><em>Calgary</em></td>
<td>315.42</td>
<td>0</td>
<td>234.76</td>
</tr>
<tr>
<td><em>Toronto</em></td>
<td>18.49</td>
<td>-878.77</td>
<td>0</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><strong>Cavalier</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td><em>Ottawa</em></td>
<td>0</td>
<td>-957.81</td>
<td>-110.12</td>
</tr>
<tr>
<td><em>Calgary</em></td>
<td>338.42</td>
<td>0</td>
<td>254.76</td>
</tr>
<tr>
<td><em>Toronto</em></td>
<td>21.49</td>
<td>-898.77</td>
<td>0</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><strong>Protégé</strong></td>
<td><em>Ottawa</em></td>
<td><em>Calgary</em></td>
<td><em>Toronto</em></td>
</tr>
<tr>
<td><em>Ottawa</em></td>
<td>0</td>
<td>-1149.01</td>
<td>-123.35</td>
</tr>
<tr>
<td><em>Calgary</em></td>
<td>413.38</td>
<td>0</td>
<td>318.38</td>
</tr>
<tr>
<td><em>Toronto</em></td>
<td>28.38</td>
<td>-1008.40</td>
<td>0</td>
</tr>
</tbody>
</table>

### Discussion

As we can see from the table, the highest potential profit - roughly $560 - is realized from buying a Honda Civic in Ottawa and selling it in Calgary. This is due in part to the larger difference in price of a Civic in Calgary and a Civic in Ottawa, but also due to the fact that the Civic is the most fuel efficient car in this analysis. The Corolla, which is the second most fuel efficient car and also has the second largest difference in prices between the two cities has the second highest potential for profit, at around $540. The Protégé, which is the least fuel efficient car in the analysis but has the third highest difference in prices between the two cities, comes in at third, with a potential profit of around $410.

It is also possible to realize a profit buying a car in Toronto and selling it in Calgary, but because Toronto car prices are higher, combined with the current higher gas prices in Toronto, and also because Toronto to Calgary by car is a further drive, the expected profit is lower from doing so.

Assuming 36 hours of non-stop driving (which is absolutely ludicrous), the $560 in profit calculates out to about $15.60 an hour. Clearly, the phrase "don't quit your day job" applies to this. However, there are several ways one could exploit market inefficiencies. For example, good sales bargaining/sales skills could increase the spread in prices between Ottawa and Calgary. For example, if you were able to buy the car for $500 less than the market price in Ottawa and sell it for $200 more than the market price in Calgary, you could increase your total profit to roughly $1260. This works out to about $35 an hour. Not looking too bad now!

A more in depth analysis of price spread for each car is necessary to determine how likely the above scenario is. I will leave this to a future post, where I will attempt to analyze profit as a random variable. This means that I will be able to attach a distribution to the profit, giving us a lot more insight into the potential profit. I will also be able to figure out the risk of losing money, as well as some other interesting insights.

One thing that I haven't mentioned is the cost from getting back to city A from city B. Clearly, for this whole idea to make any sense to attempt, one of the following would need to be assumed:

- The individual would be permanently relocating to city B
- They would be buying some other easily transportable item with arbitrage potential in city B and using that to offset the cost of travelling back to city A, and hopefully make even more profit from the whole trip

Hopefully you have enjoyed this post! If you have any comments (or notice anything off about my data) please leave a comment below and I'll do my best to address it.

Until next time, happy pricing!
