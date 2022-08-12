class UserNotificationMailer < ApplicationMailer

 
  def create_article(object)

   @user = object
    mail to: "admin@gmail.com" , subject: "A new user has been created now. At #{@user.created_at}"
    
  end

end
