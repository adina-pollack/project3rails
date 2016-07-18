class Location 
  attr_reader :city, :id

  def initialize (city)
    @city = city
    city = city.split(' ').join('%20')
    url = "http://api.bandsintown.com/events/search.json?location=#{city}&page=1&app_id=#{ENV["pusher_app_id"]}"
    response = HTTParty.get(url)
    @id = response[id.to_i]
  end
end
