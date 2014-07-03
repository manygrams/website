---
layout: post
title: How to transpose an Excel row to a column vector using R
date: '2013-02-14 10:13:38 -0500'
---

### The Problem:

Sometimes I'm required to use Excel. Whether it be for work, school, or otherwise, MS Office is a popular software suite. That's just the way it is. However, being popular does not imply being of quality! I was trying to transpose paste a very long row of variable names into a single column so I could create a data dictionary, but Excel's wonderful Transpose Paste feature just was not working. No reasonable explanation for it. I was not about to spend half an hour digging through Google for forum posts from other frustrated users, so I cooked up a one-liner in R to do the Transpose for me.

### What it Does

Currently, it transposes a row vector copied into the clipboard from Excel to a column vector, and stores it back into the clipboard. I could not get R to do the same with a column vector or a matrix due to the way writeClipboard() works. This could easily be remedied with _write.csv()_, but I wanted to keep it short and sweet.

Expect an update with a fully-working transpose paste replacement in R after I have time to look into how the clipboard works at an underlying level.

### How to Use

Select the row in Excel. Execute the code in R. Select the cell where you want the column to start. Press _CTRL+V_.

Simple, eh? I have added this function (which I called _tp()_)to my _RProfile.site_ file so I can simply execute it any time I need a working implementation of transpose paste.

### The Code
{% highlight r %}
writeClipboard(t(read.table(textConnection(readClipboard()),header=FALSE)))
{% endhighlight %}
