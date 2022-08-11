class Events::NotesController < NotesController

    before_action :set_noteable


    def set_noteable
        @noteable = Event.find(params[:event_id])
    end



end