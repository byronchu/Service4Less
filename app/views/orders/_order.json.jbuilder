json.extract! order, :id, :service_id, :user_id, :qty, :price, :completed, :created_at, :updated_at
json.url order_url(order, format: :json)