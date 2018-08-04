json.extract! current_address, :id, :address, :rent, :created_at, :updated_at
json.url current_address_url(current_address, format: :json)
