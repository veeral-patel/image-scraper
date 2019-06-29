class Scrape < ApplicationRecord
    enum status: [:complete, :incomplete]

    validates :url, presence: true

    has_many :images, dependent: :destroy

    def largest_image
        max_image_size = self.images.maximum('size')
        self.images.where(size: max_image_size).first
    end

    def to_s
        self.url
    end
end
