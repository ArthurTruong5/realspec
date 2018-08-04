json.extract! new_address, :id, :address, :rent, :created_at, :updated_at
json.url new_address_url(new_address, format: :json)
