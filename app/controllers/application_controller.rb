class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
    
    # def reset_session
    #   @_request.reset_session
    # end
  protected 

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :phone_number, :description])
  end
end
