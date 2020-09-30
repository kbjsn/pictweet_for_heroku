class ApplicationController < ActionController::Base
  #Prevent CSRF attacks by raising an exception.
  #For APIs, you may want to use : null_session instead.
  #railsバージョン5.2以降はActionController::Base内で以下を実装し、CSRF対策済み
  protect_from_forgery with: :exception
  
   before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end