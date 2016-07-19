class Concert < ApplicationRecord
  has_many :bands

  # optional, but probably a good idea
  # validates :external_id, :uniqueness => true
  def as_json(options={})
      super.as_json(options).merge({artists: JSON.parse(self.artists)})
  end

  def self.save_data_from_api (location)
    url = "http://api.bandsintown.com/events/search?location=#{location}&radius=15&format=json&app_id=#{ENV["pusher_app_id"]}"
    response = HTTParty.get(url)
    concert_data = JSON.parse(response.body)
    concerts = concert_data.map do |event|
      c = Concert.new
      c.title = event['artists'][0]['name']
      c.datetime = event['datetime']
      c.ticket_status = event['ticket_status']
      c.on_sale_datetime = event['on_sale_datetime']

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
