class Concert < ApplicationRecord


  # optional, but probably a good idea
  # NHO: ++ to validations! It is a good idea
  # validates :external_id, :uniqueness => true
  def as_json(options={})
    super(options).merge({artists: JSON.parse(self.artists || '[]')}) # Another option is to break this up into another model
  end
  # NHO: nice model method and job parsing API data to save only what you need.
  def self.save_data_from_api (location)
    url = "http://api.bandsintown.com/events/search?location=#{location}&radius=1&format=json&app_id=#{ENV["pusher_app_id"]}"
    response = HTTParty.get(url)
    concert_data = JSON.parse(response.body)
    concerts = concert_data.map do |event|
      c = Concert.new
      c.title = event['artists'][0]['name']
      c.datetime = event['datetime']
      c.ticket_status = event['ticket_status']
      c.on_sale_datetime = event['on_sale_datetime']
      c.venue_latitude = event['venue']['latitude']
      c.venue_longitude = event['venue']['longitude']

      #need help making this an array with names for all artists
      c.artists = event['artists'].to_json
      c.venue_name = event['venue']['name']
      c.city = event['venue']['city']


      # set name value however you want to do that
      c.save
      c
    end
    # concerts.select(&:persisted?)
  end
end
