class EventsController < ApplicationController
    before_action :set_event, only: [:show]

    # GET /events
    def index
        @events = Event.all
    end

    # GET /events/1
    def show
    end

    # GET /events/new
    def new
        @event = Event.new
    end

    # GET /event/1/edit
    def edit
    end

    # POST /events
    def create
        @event = Event.new(event_params)

        respond_to do |format|
            if @event.save
                format.html { redirect_to events_path, notice: 'イベントを作成しました'}
                format.json { render :show, status: :created, location: @event }
            else
                format.html { render :new }
                format.json { render json: @event.errors, status: :unprocessable_entity }
            end
        end
    end

    private
        def set_event
            @event = Event.find(params[:id])
        end

        def event_params
            params.require(:event).permit(:name, :date)
        end
end
