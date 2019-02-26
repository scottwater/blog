---
title: Ruby - Who Called This Method?
layout: post
date: '2019-02-26 17:26:26 +0000'
permalink: s7h
---
 I wanted to add a header on all my PostMark emails. Instead of manually editing each method, I dropped this one-liner in.

```ruby
headers["X-PM-Tag"] = caller[0][/`.*'/][1..-2]
```

Now, each email gets tagged with the current mailer method.
