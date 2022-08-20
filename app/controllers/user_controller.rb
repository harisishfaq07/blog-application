class UserController < ApplicationController

include Users


    def edit
        @user = User.find(params[:id])
    end
def update
    @user = User.find(params[:id])

    if @user.update(user_params)
        flash.alert = "User Updated"
        redirect_to users_path
    else
        flash.alert = "User not Updated"
        redirect_to dashboard_path
    end
end

def user_params
    params.require(:user).permit(:name , :email, :gender , :admin , :request , :status)
end
end