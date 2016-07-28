Concert.destroy_all



cities = ["Austin", "Miami", "Dallas", "Houston", "San Francisco", "Portland", "Milwaukee", "Indianapolis", "Raleigh", "St. Louis", "Atlanta", "Boston", "Minneapolis", "Chicago", "Washington", "Seattle", "New York", "Los Angeles", "London", "Philadelphia"]


cities.each do |city|
  # NHO: This is effective for right now, but maybe this api call should happen via the front-end
  Concert.save_data_from_api(city)
end
