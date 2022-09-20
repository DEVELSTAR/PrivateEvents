class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = current_user.events.build(event_params)
		if @event.save
           flash[:success] = "Event '#{@event.title}' created!"
           redirect_to @event
        else
	      flash[:alert] = "Some error!"
	      render 'new'		
	    end
	end

	private

	def event_params
      params.require(:event).permit(:title, :date, :location, :description, :user_id)
    end

end