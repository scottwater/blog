
Jekyll::Hooks.register :posts, :post_render do |post|

    url = (post.data["short_url"] || post.data["link_url"])
    link = (url && !url.empty?) ? "<p><a href='#{url}'>#{post.data['title']}</a></p>" : ""
    post.data["full_feed_description"] = "#{link}#{post.content}".strip

end
