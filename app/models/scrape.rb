class Scrape < ApplicationRecord
    enum status: [:complete, :incomplete]

    validates :url, presence: true
end
