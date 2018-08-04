json.extract! current_travel_cost, :id, :bus, :car, :train, :light_rail, :created_at, :updated_at
json.url current_travel_cost_url(current_travel_cost, format: :json)
