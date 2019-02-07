---
layout: post
title: "SSL::VERIFY_NONE - NEVER!"
link_url:
short_url:
date: 2019-02-07 15:29:31 UTC
permalink: "/s36"
tags:
---




I saw this little doozy as recommend code for (Ruby) API access:

`http.verify_mode = OpenSSL::SSL::VERIFY_NONE`

This effectively disables SSL checks and is not something anyone should be recommending....ever.