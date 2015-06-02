class ItinerariesController < ApplicationController

  def index
    @itineraries = Itinerary.all
    render json: @itineraries
  end

  def show
    @itinerary = Itinerary.find_by_name(params[:id])
    render json: @itinerary
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    if @itinerary.save
      render json: @itinerary, status: :created, location: itineraries_url
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    if @itinerary.update(itinerary_params)
      head :no_content
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy
    head :no_content
  end


  private

  def itinerary_params
    params.require(:itinerary).permit(:name)
  end

end
