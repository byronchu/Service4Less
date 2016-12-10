json.extract! profile, :id, :user, :name, :phone, :country, :state, :city, :service_provider, :provider_name, :provider_logo_url, :created_at, :updated_at
json.url profile_url(profile, format: :json)