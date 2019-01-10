---
layout: page
title: The Archives
link_title: Archive
---
<div>
  <ul id="archive" class="list-reset">
  {%- for post in site.posts -%}
    <li class="my-2 text-lg"><a class="font-semibold no-underline hover:underline" href="{{ post.url | prepend: site.baseurl | prepend: site.url }}">{{post.title}}</a> <span class='text-muted text-grey-light text-sm'>on {{ post.date | date: '%b %d, %Y' }}</span></li>
  {%- endfor -%}
  </ul>
</div>
