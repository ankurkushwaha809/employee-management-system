json.extract! image, :id, :real_name, :image_name, :user_id, :created_at, :updated_at
json.url image_url(image, format: :json)
