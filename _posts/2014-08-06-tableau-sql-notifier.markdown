---
layout: post
title: Tableau SQL Notifier Gem
date: '2014-08-06 20:35:00 -0500'
---

I have released my second gem! I've started using Tableau at work, and a few of us wanted to see what queries it was running to get the data it was using. I wrote a little gem that watches the logs and shows a Mac desktop notification every time a new query is run. You can click on the notification to open the SQL in your default editor.

To install / use, run:

{% highlight bash %}
gem install tableau_notify
tableau-notify
{% endhighlight %}

Check it out [here](https://github.com/manygrams/tableau_notify).
