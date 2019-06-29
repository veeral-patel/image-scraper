class Scrape < ApplicationRecord
    enum status: [:complete, :incomplete]
end
