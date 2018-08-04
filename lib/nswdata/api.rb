require 'opendata-api'
require 'json'
API_KEY = Rails.application.credentials.nswdata[:apikey]
OpenDataAPI.init(API_KEY)

args = [
  {
    api_name: 'trip_planner',
    format: 'rapidJSON',
    coord_lat: '-33.8688',
    coord_long: '151.2093',
    coord_radius: '1000'
  }
]
response = OpenDataAPI.run(args)

puts JSON.pretty_generate(JSON.parse(response[:trip_planner]))