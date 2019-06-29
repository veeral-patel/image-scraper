json.extract! image, :id, :image_url, :width, :height, :created_at, :updated_at
json.url image_url(image, format: :json)
