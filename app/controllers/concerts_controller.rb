class ConcertsController < ApplicationController
  def get_concerts
    if params[:city]
      @location = Location.new(params[:city])
    else
      @location = Location.new("New York City")
    end
  end
end
