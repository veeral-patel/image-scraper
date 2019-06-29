class Image < ApplicationRecord
    belongs_to :scrape

    def to_s
        self.image_url
    end
end
