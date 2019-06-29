require 'open-uri'
require 'uri'
require 'fastimage'

class ScrapeLargestImageJob < ApplicationJob
  queue_as :default

  def perform(scrape)
    html = open(scrape.url).read
    image_urls = URI.extract(html).select{ |l| l[/\.(?:png|jpe?g)\b/]}
    image_urls.each do |image_url|
      width, height = FastImage.size(image_url)
      Image.create(image_url: image_url, width: width, height: height, scrape: scrape)
    end

    scrape.status = :complete
    scrape.save
  end
end
