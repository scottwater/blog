require 'active_support/core_ext/string/filters'

Jekyll::Hooks.register :site, :post_read do |site|


  site.categories['short'].each do |post|

    has_excerpt_defined = !!post.data['excerpt_separator']

    # in Jekyll, all posts have an excerpt. 
    # I want to know if one was explicity defined
    feed_excerpt = has_excerpt_defined ?  post.data["excerpt"].to_s : post.content

    # not exactly the model for HTML santization,
    # but enough when you are the author as well
    feed_excerpt = feed_excerpt
      .gsub(/<.*?>/m, '')
      .gsub(/\r?\n/, ' ')

    # hard coded the domain that we get a true warning about length.
    published_url = "https://scottw.com#{post.url}"
    feed_description = "#{post.data['title']} - #{feed_excerpt}"

    # since this is for twitter, default to the shortened url if 
    # it exists
    external_url = post.data['short_url'] || post.data['link_url']

    if external_url && !external_url.empty?
      # if we are linking else where, just link to it
      feed_description = "#{feed_description} #{external_url}".strip
    elsif has_excerpt_defined
      # is there likely more to this post?
      feed_description = "#{feed_description} #{published_url}"
    end

    if feed_description.length > 280
      # Tweet max length of 280 minus 3 elipses plus blank space + url length
      lenght_to_truncate_at = (280 - (4 + published_url.length))
      # try to truncate at a word break
      truncated_feed_description = feed_description.truncate(lenght_to_truncate_at, separator: /\s/)
      Jekyll.logger.warn "Warning:", "Feed description is too long: #{post.data['title']}. #{feed_description.length} characters"
      Jekyll.logger.warn "Truncated:", truncated_feed_description

      feed_description = "#{truncated_feed_description.strip} #{published_url}"
    end

    post.data['feed_description'] = feed_description
  end

end
