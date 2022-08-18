class UserNotificationMailer < ApplicationMailer

 
  def create_article(object)
# @usr = params[:user]

   @article = object
   @useremail = User.find(@article.user_id)

    mail to: @useremail.email , subject: "A new user has been created now. At #{@article.created_at}"
    
  end

end
