module EventsHelper
    def events_params
        params.require(:event).permit(:title, :description, :datetime)
    end
end
