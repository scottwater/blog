---
layout: post
title: "Library not loaded: /usr/local/opt/readline/lib/libreadline.7.dylib"
link_url:
short_url:
date: 2019-02-08 21:13:57 UTC
permalink: "/s41"
tags:
---




This was a horrible way to spend a Friday afternoon. At some point, I installed something via Homebrew that borked/updated readline. 

<!--more-->

I still do not understand the issue 100%, but my best guess is ruby gems with native extensions were failing because of the dependency change. How it happened? Computers!

Re-installing Ruby (rbenv install ruby_version) seems to have addressed most of the issues (also needed to update bootstap to a newer version). 

Wish I had a better recommendation for how to fix it and why it worked, but hopefully this is start for others.