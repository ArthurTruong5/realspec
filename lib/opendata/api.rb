require 'opendata-api'
require 'json'
API_KEY = 'r1bq6BvrLKpQLzlf1qnh0P3phZ2Tadtn0FAV'
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