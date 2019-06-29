class AddScrapeToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :scrape, foreign_key: true
  end
end
