class ConfirmationsController < Devise::ConfirmationsController
    private
    def after_confirmation_path_for(resource_name, resource)
   
      redirect_to dashboard_path(resource)
    
    end
  end