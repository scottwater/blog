---
title: Overriding a .gitignore
layout: post
date: '2019-05-29 14:02:18 +0000'
permalink: sa8
---
In my default .gitignore (~/.gitignore),  I have .ruby-version excluded. 

I needed to include a .ruby-version file to fix a Netlify build issue.

Today I learned you can override a .gitignore with a `--force` argument. 

<!--more-->

```bash
git add .ruby-version --force
```
