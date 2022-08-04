class WelcomeController < ApplicationController
    before_action :authenticate_user! , only: [:dashboard]
    def homepage
    end
    def dashboard
    end

    def users
    end
    # def destroy
    #     @user = User.find[params[:id]]

    #     if @user.destroy
    #         flash.alert = "User Deleted Successfully"
    #         redirect_to users_path
    #     else
    #         flash.alert = "User not deleted, Try again"
    #     end
    # end
end