Concert.destroy_all



cities = ["Austin", "Miami", "Dallas", "Houston", "San Francisco", "Portland", "Milwaukee", "Indianapolis", "Raleigh", "St. Louis", "Atlanta", "Boston", "Minneapolis", "Chicago", "Washington", "Seattle", "New York", "Los Angeles", "London", "Philadelphia"]


cities.each do |city|
Concert.save_data_from_api(city)
end
