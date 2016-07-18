class Location
  attr_reader :city :id

  def initialize (city)
    @city = city
    url = "http://api.bandsintown.com/events/search.json?location=" + @city + "&page=1&{ENV["project_app_id"]}"
    response = HTTParty.get(url)
    @id = response["id"]
  end
end
