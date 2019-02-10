---
layout: post
title: "Ruby 2.7  Enumerable#tally"
link_url: "https://medium.com/@baweaver/ruby-2-7-enumerable-tally-a706a5fb11ea"
short_url: "https://smw.fyi/1X"
date: 2019-02-10 14:29:06 UTC
permalink: "/s44"
tags:
---




I am looking forward to this. I often use code that looks like this: 

```h = Hash.new(0)```
```items.each {|item| h[item] += 1}```

What makes this work is whatever you pass to Hash in the initializer is used as the default value.