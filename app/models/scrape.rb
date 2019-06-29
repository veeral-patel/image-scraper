class Scrape < ApplicationRecord
    enum status: [:complete, :incomplete]

    validates :url, presence: true

    has_many :images

    def to_s
        self.url
    end
end
