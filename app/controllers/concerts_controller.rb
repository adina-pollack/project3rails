class ConcertsController < ApplicationController
  before_action :set_concert, only: [:show, :update, :destroy]
  def index
    @concerts = Concert.all
    render json: @concerts
  end
  def get_events
    if params[:city]
      @location = Location.new(params[:city])
    else
      @location = Location.new("New York")
    end
  end
  def show
    # @concert = Concert.find(params[:id])
    render json: @concert
  end
  # def new
  #   @concert = Concert.new
  # end
  def create
    # @concert = Concert.create!(concert_params)
    @concert = Concert.new(concert_params)

    if @concert.save
      render json: @concert, status: :created, location: @concert
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end

  # def edit
  #   @concert = Concert.find(params[:id])
  # end
  def update
    # @concert = Concert.find(params[:id])
    # @concert.update(concert_params)
    if @concert.update(concert_params)
      render json: @concert
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end
  def destroy
    @concert.destroy
  end
  private
  def set_concert
    @concert = Concert.find(params[:id])
  end
  def concert_params
    params.require(:concert).permit(:name, :datetime, :ticket_status, :venue_name, :venue_city)
  end
end
