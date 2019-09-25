require "erb"
module Jekyll
  class SeoTag
    # A drop representing the page image
    # The image path will be pulled from:
    #
    # 1. The `image` key if it's a string
    # 2. The `image.path` key if it's a hash
    # 3. The `image.facebook` key
    # 4. The `image.twitter` key
    class ImageDrop < Jekyll::Drops::Drop
      include Jekyll::SeoTag::UrlHelper

      def image_hash
        @image_hash ||= if page["image"].is_a?(String)
          {"path" => page["image"]}
        else
          url_encoded_title = ERB::Util.url_encode(page["title"] || "Scott Watermasysk")
          icon = page["icon"] || (page["link_url"] ? "link" : "code")
          bg = page["bg"] || "brick_wall"
          img = "https://og-image.scottwater.now.sh/#{url_encoded_title}.png?theme=white&md=1&fontSize=150px&background=#{bg}&images=https%3A%2F%2Fswassets.scottwater.now.sh%2Fblack%2F#{icon}.svg"
          {"path" => img}
        end
      end
    end
  end
end

module Jekyll
  class OGImage < Liquid::Tag
    # https://og-image.scottwater.now.sh/My%20Blog%20Post%20Title.png?theme=white&md=1&fontSize=150px&background=brick_wall&images=https%3A%2F%2Fswassets.scottwater.now.sh%2Fblack%2Flink.svg
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text} #{Time.now}"
    end
  end
end

Liquid::Template.register_tag("og_image", Jekyll::OGImage)
