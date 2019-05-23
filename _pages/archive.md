---
layout: page
title: The Archives
link_title: Posts
---
<div>
  <ul id="archive" class="list-reset">
  {%- for post in site.categories.blog -%}
    <li class="my-2 text-lg"><a class="no-underline hover:underline" href="{{ post.url | prepend: site.url }}">{{post.title}}</a> <span class='text-gray-400 text-sm'>on {{ post.date | date: '%b %d, %Y' }}</span></li>
  {%- endfor -%}
  </ul>
</div>
