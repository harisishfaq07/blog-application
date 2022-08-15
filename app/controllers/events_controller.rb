class EventsController < ApplicationController
    load_and_authorize_resource 
def index
    @events  = Event.all
end


def new
    @event = Event.new
end

def create
    @event = Event.new(event_params)

    if @event.save
        redirect_to event_path(@event)
        flash.alert = "Event Added Successfully"
    else
        render "new"
    end
end

def show
    @event = Event.find(params[:id])
end

def event_params
    params.require(:event).permit(:name , :description)
end



end