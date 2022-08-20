class ArticlesController < ApplicationController
before_action :authenticate_user! , only: [:new , :edit]
include Articles  #Concern

def index
    @articles = Article.all

end


    def new
@article = Article.new
    end
    

def show
    @article = Article.find(params[:id])
    @comment = Comment.new
end

def edit
    @article = Article.find(params[:id])
end

def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
flash.alert = "Article Updated Successfully"
redirect_to dashboard_path
    else
        render 'edit'
    end
    end

    def destroy
        @article = Article.find(params[:id])
        if @article.destroy
            flash.alert = "Article Deleted Successfully"
            redirect_to dashboard_path
        else
            flash.alert = "Article not deleted, please Try again"
        end
    end
    def article_params
        params.require(:article).permit(:name , :description , category_ids: [])
    end
end