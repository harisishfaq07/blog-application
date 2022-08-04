class CategoriesController < ApplicationController

def new
@category = Category.new
end

def create
    @category = Category.new(category_params)
    if @category.save
        flash.alert = "Category Created"
        redirect_to dashboard_path
    else
        render 'new'
    end
end

def category_params
    params.require(:category).permit(:name)
end
end