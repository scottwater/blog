---
title: CtrlP Shortcuts for Rails
layout: post
date: '2019-03-11 16:20:40 +0000'
permalink: s8d
---
I liked how @garybernhardt had specific rails shortcuts in vim for his Selecta script. As a fan of CtrlP + Ag, I did not want to switch, so I came up with the following which works well.

<!--more-->

```viml
map <leader>gv :CtrlP app/views<enter>
map <leader>ga :CtrlP app/assets<enter>
map <leader>gc :CtrlP app/controllers<enter>
map <leader>gw :CtrlP app/workers<enter>
map <leader>gm :CtrlP app/models<enter>
map <leader>gl :CtrlP lib<enter>
map <leader>gs :CtrlP spec<enter>
```

The pattern should be obvious. One mistake I initially made was using:

```viml
map <leader>gl :CtrlP<enter>lib/
```

This ends up just entering lib/ for you in the search and does not explicitly limit the search to the lib directory. This is noticeably slower since each keystroke is a wasted search. Also, with a small directory name like _lib_, it is easy to have invalid fuzzy matches. The CtrlP + directory and then enter keeps the search focused on the specified directory only.
