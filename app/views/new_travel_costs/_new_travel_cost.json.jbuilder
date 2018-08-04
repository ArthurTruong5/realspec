json.extract! new_travel_cost, :id, :bus, :car, :train, :light_rail, :created_at, :updated_at
json.url new_travel_cost_url(new_travel_cost, format: :json)
