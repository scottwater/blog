---
layout: page
title: Full Archive
link_title: Archive
---
<div>
  <ul id="archive">
  {%- for post in site.posts -%}
    <li><a href="{{ post.url | prepend: site.baseurl | prepend: site.url }}">{{post.title}}</a> <span class=''>on {{ post.date | date: '%b %d, %Y' }}</span></li>
  {%- endfor -%}
  </ul>
</div>
