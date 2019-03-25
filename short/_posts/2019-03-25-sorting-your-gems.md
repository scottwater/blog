---
title: Sorting Your Gems
layout: post
date: '2019-03-25 14:13:28 +0000'
permalink: s8m
---
I was looking through the Dev.to source, and the first thing that jumped out at me was the Gemfile was sorted (within each group). This made it much easier to scan and think about their dependencies.

<!--more-->

Using Vim, I was able to sort my Gemfile in a couple of seconds.

1. Select the lines within the group (or all of those outside of a group). 
2. enter command mode (:) and type sort

That's it. Now, if you were like me, you still sometimes flipflop between ' and " (working on it!), you will need to pick one (") and do a find and replace `%s/'/"/g` as well otherwise things will not sort quite right.
