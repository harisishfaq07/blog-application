class CommentsController < ApplicationController
    before_action :authenticate_user! , only: [:new ]

   
    def new
        @comment = Comment.new
    end
    def create
       
        @comment = Comment.new(comment_params)
        if user_signed_in?
    @comment.created_by = current_user.name
        else
            @comment.created_by = "Visitor"
        end
        if @comment.save 
            redirect_to articles_path
            flash.alert = "Comment added"
        else
            render 'new'
        end
    end
    def destroy
        @comment = Comment.find(params[:id])
if @comment.destroy
    redirect_to article_path
end
    end
    def comment_params
        params.require(:comment).permit(:name , :article_id )
    end


end