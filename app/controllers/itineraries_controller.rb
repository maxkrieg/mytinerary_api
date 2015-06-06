class ItinerariesController < ProtectedController

  def index
    # @itineraries = Itinerary.all.reverse
    @itineraries = @current_user.itineraries.reverse
    render json: @itineraries
  end

  def show
    # @itinerary = Itinerary.find(params[:id])
    @itinerary = @current_user.itineraries.find(params[:id])
    render json: @itinerary
  end

  def create
    # @itinerary = Itinerary.new(itinerary_params)
    @itinerary = @current_user.itineraries.new(itinerary_params)
    if @itinerary.save
      render json: @itinerary, status: :created, location: itineraries_url
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
  end

  def update
    # @itinerary = Itinerary.find(params[:id])
    @itinerary = @current_user.itineraries.find(params[:id])
    if @itinerary.update(itinerary_params)
      head :no_content
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # @itinerary = Itinerary.find(params[:id])
    @itinerary = @current_user.itineraries.find(params[:id])
    @itinerary.destroy
    head :no_content
  end


  private

  def itinerary_params
    params.require(:itinerary).permit(:name)
  end

end
