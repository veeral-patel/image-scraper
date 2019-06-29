json.extract! scrape, :id, :url, :status, :largest_image, :created_at, :updated_at
json.url scrape_url(scrape, format: :json)
