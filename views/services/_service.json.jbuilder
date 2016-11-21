json.extract! service, :id, :user_id, :category_id, :description, :country, :state, :city, :price, :dates_id, :service_pic_url, :created_at, :updated_at
json.url service_url(service, format: :json)