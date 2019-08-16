require "active_support/core_ext/string/filters"
require "active_support/core_ext/object/blank"
require "twitter-text"

Jekyll::Hooks.register :posts, :post_render do |post|
  if post.data["categories"].include?("short")

    if post.data["excerpt_separator"].nil? && post.content =~ /(<!--\s*more\s*-->)/
      post.data["excerpt_separator"] = $1
      post.data["excerpt"] = Jekyll::Excerpt.new(post)
    end

    has_excerpt_defined = !!post.data["excerpt_separator"]
    # in Jekyll, all posts have an excerpt.
    # I want to know if one was explicity defined
    feed_excerpt = has_excerpt_defined ? post.data["excerpt"].to_s : post.content

    # not exactly the model for HTML santization,
    # but enough when you are the author as well
    feed_excerpt = feed_excerpt
      .gsub(/<.*?>/m, "")
      .gsub(/(\r?\n)+/, " ")
      .gsub(/\s{2,}/, " ")
      .strip

    # hard coded the domain that we get a true warning about length.
    published_url = "https://scottw.com#{post.url}"
    # no need to use the short url. Twitter treats all urls as 23 characters

    feed_description = "#{post.data["title"]} - #{feed_excerpt}".strip
    feed_description = "#{feed_description.truncate(253, separator: /\s/)} #{published_url}"


    post.data["feed_description"] = feed_description
  end
end
