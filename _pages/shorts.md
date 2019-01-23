---
layout: default
title: Shorts
---

<div class="content mb-10 bg-blue-lightest border-l-4 border-blue p-4">
  Shorts are small posts and links. These are auto posted to <a href="https://twitter.com/scottw" target="_blank">@scottw</a> on Twitter.
</div>

  <div>
    {% for post in site.categories.short %}
      {%- include log.html -%}
    {%- endfor -%}
  </div>
