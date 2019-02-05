---
layout: post
title: "Ruby Lonely Operator"
link_url:
short_url:
date: 2019-02-05 16:46:09 UTC
permalink: "/s30"
tags:
---




Ruby 2.3 introduced a feature called the "Lonely Operator" (which I somehow missed until recently). 

Instead of: 

`user && user.address && user.address.street` 

You can write it like this: 

`user&.address&.street`
