class EventsController < ApplicationController
    include EventsHelper
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @events = Event.all
        @upcoming_events = @events.upcoming_events
        @previous_events = @events.previous_events
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        @event = current_user.events.build(events_params)
        @event.save

        respond_to do |format|
            if @event.save
                format.html { redirect_to @event, notice: 'Event was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end
end