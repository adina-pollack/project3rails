class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end
  def show
    @concert = Concert.find(params[:id])
  end
  def new
    @venue = Venue.find(params[:venue_id])
    @concert = @venue.concerts.new
  end
  def create
    @venue = Venue.find(params[:venue_id])
    @concert = Concert.create!(concert_params.merge(venue: @venue))
    redirect_to @venue
  end
  def edit
    @concert = Concert.find(params[:id])
    @venue = Venue.find(params[:venue_id])
  end
  def update
    @venue = Venue.find(params[:venue_id])
    @concert = Concert.find(params[:id])
    @concert.update(concert_params.merge(venue: @venue))
    redirect_to venue_concert_path(@venue, @concert)
  end
  def destroy
    @venue = Venue.find(params[:venue_id])
    @concert = @venue.concerts.find(params[:id])
    @concert.destroy
    redirect_to @venue
  end
  private
  def concert_params
    params.require(:concert).permit(:name, :datetime, :ticket_status)
  end
end
