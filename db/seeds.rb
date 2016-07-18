
Concert.destroy_all
# struts = Concert.create(name: "The Struts with Special Guest Dorothy", datetime: "2016-08-06", ticket_status: "Available", venue_name: "9:30 Club", venue_city: "Washington, DC")


# holyfuck = Concert.create(name: "Holy Fuck with DOOMSQUAD", datetime: "2016-07-21", ticket_status: "Available", venue_name: "DC9", venue_city: "Washington, DC")
# azealia = Concert.create(name: "Azealia Banks", datetime: "2016-07-19", ticket_status: "Available", venue_name: "Blackcat", venue_city: "Washington, DC")
#
# Band.create([
#   {name: "The Struts", genre: "Rock", photo_url: "http://tws-data.s3.amazonaws.com/wp-content/uploads/2015/09/30114954/the-struts.png", concert: struts},
#   {name: "Dorothy", genre: "Rock", photo_url: "http://i0.wp.com/atwoodmagazine.com/wp-content/uploads/2015/12/Screen-Shot-2015-12-16-at-1.24.42-PM-e1450904299467.png?resize=1050%2C700", concert: struts},
#   {name: "Holy Fuck", genre: "Electronica", photo_url: "https://upload.wikimedia.org/wikipedia/en/d/d0/HolyFuckLP.jpg", concert: holyfuck},
#   {name: "DOOMSQUAD", genre: "Electronic", photo_url: "http://cutfromsteel.com/wp-content/uploads/2014/02/DOOMSQUAD_pic.png", concert: holyfuck},
#   {name: "Azealia Banks", genre: "Hip House", photo_url: "https://upload.wikimedia.org/wikipedia/commons/8/87/Azealia_Banks_2012_NME_Awards_cropped.jpg", concert: azealia}
#   ])


  # client = bandsintown::Client(api_key: {ENV["pusher_app_id"]}, api_type: 'Type')
  # concerts = client.get_all_concerts
  #
  # concerts.each do |concert|
  #   Concert.create(:venue => concert["venue"], :address => concert["address"], :artist => concert["artist"])
  # end


cities =["St. Louis", "Atlanta", "Boston", "Minneapolis", "Chicago", "Washington", "Seattle", "New York", "Los Angeles", "London", "Philadelphia"]


cities.each do |city|
Concert.save_data_from_api(city)
end
