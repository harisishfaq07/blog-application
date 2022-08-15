class NewsController < ApplicationController
load_and_authorize_resource 



def index
    @news = News.all
end

def new
    @new = News.new
end
def create
    @new = News.new(new_params)
    if @new.save 
        redirect_to news_path(@new)
        flash.alert = "News Publisheb"
    end
end

def show
    @new = News.find(params[:id])
end

def new_params
    params.require(:news).permit(:name , :description)
end

end