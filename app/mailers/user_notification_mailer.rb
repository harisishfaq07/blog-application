class UserNotificationMailer < ApplicationMailer

 
  def create_article(object)
# @usr = params[:user]

   @user = object
   @useremail = User.find(@user.user_id)

    mail to: @useremail.email , subject: "A new user has been created now. At #{@user.created_at}"
    
  end

end
