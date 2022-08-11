class News::NotesController < NotesController

    before_action :set_noteable


    def set_noteable
        @noteable = News.find(params[:news_id])
    end



end