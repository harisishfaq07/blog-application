class NotesController < ApplicationController


def create
    @note = @noteable.notes.new note_params
@note.user_id = current_user.id
     @note.save
        redirect_to @noteable
        flash.alert = "note Added"

end

def note_params
    params.require(:note).permit(:name)
end


end

# def create
#     @comment = @commentable.comments.new comment_params

#     @comment.save
#    redirect_to @commentable
    
# end

# def comment_params
#     params.require(:comment).permit(:name)
# end

