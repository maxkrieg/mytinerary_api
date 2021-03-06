class EventsController < ProtectedController

  before_action :set_itinerary

  def index
    @events = @itinerary.events.sort { |a, b| [a[:date], a[:start_time]] <=> [b[:date], b[:start_time]] }
    render json: @events
  end

  def show
    @event = @itinerary.events.find(params[:id])
    render json: @event
  end

  def create
    @event = @itinerary.events.build(event_params)
    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  def update
    @event = @itinerary.events.find(params[:id])
    if @event.update(event_params)
      head :no_content
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @event = @itinerary.events.find(params[:id])
    @event.destroy
    head :no_content
  end


  private

  def set_itinerary
    # @itinerary = Itinerary.find(params[:itinerary_id])
    @itinerary = @current_user.itineraries.find(params[:itinerary_id])
  end

  def event_params
    params.permit(:title,:location,:date,:start_time,:end_time,:attendees,:desc,:image)
  end

end





