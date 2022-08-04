class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
    def after_sign_in_path_for(resource)
      dashboard_path(resource)
    end

    def after_update_path_for(resource_or_scope)
      dashboard_path(resource_or_scope)
    end


    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password , :gender)}
              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :gender , :current_password)}
         end

end
