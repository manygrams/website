---
layout: post
title: CULA Tools now available for uOttawa students and employees
date: '2013-01-06 20:35:18 -0500'
---

CULA Tools is now available free-of-charge for academic use by any student or employee of the University of Ottawa! All you need is a uOttawa e-mail and the nVidia CUDA driver installed. CULA Tools are a set of of libraries that allow you to execute matrix operations on your GPU. Since graphics cards are honed for matrix operations, they can be significantly faster than a CPU when computing these operations.

While working on clustering a very large database with the DBSCAN algorithm, I became frustrated with having to wait so long every time I ran the algorithm. I started reading up on how to parallelize R code, and found that there is an R package (called gputools) that allows a user to execute several common algorithms on their graphics card, including linear and generalized linear modelling, distance calculation, correlation coefficient calculation, as well as a few clustering algorithms. This package makes use of these CULA libraries, which normally are only available for a fairly hefty price.

Anyways, I'm going to play around with it over the next few weeks and report back on what I find. Check out the website [here](http://www.culatools.com/).
