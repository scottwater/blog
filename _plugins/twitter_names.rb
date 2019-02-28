module Jekyll
  module TwitterName
    def twitter_names(input)
      input.gsub(/(^|\s)@(\w+)(|'\W|$)/x, " <a href='https://twitter.com/#{'\2'}'>@#{'\2'}</a>") 
    end
  end
end

Liquid::Template.register_filter(Jekyll::TwitterName)
