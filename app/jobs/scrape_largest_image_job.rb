class ScrapeLargestImageJob < ApplicationJob
  queue_as :default

  def perform(scrape)
    scrape.status = :complete
    scrape.save
  end
end
