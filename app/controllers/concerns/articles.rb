module Articles
    ActiveSupport::Concern


    def create
        @article = Article.new(article_params)
        @article.user_id = current_user.id


        if @article.save

            UserNotificationMailer.create_article(@article).deliver_now
            
            flash.alert = "Article created successfully"
            redirect_to dashboard_path
        else
            render 'new'
        end
    end


end