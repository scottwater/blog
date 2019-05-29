---
title: "\U0001F4A1 TIL: Locking Versions on Netlify"
layout: post
date: '2019-05-29 16:17:11 +0000'
permalink: sa9
---
I ran into an interesting build issue after updating a couple of Ruby gems and NPM modules. 

<!--more-->

By default, when you create a new site on Netlify your Ruby/Node/etc. versions are locked to recent defaults unless you explicitly specify the versions using .ruby-version, .nvmrc, etc. 

I suggest going forward, you always an explicit version. By locking the core dependency versions, you will help ensure if you can build it locally, you will likely be able to build it on the remote servers as well.
