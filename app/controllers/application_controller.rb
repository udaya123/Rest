class ApplicationController < ActionController::Base
 # For APIs, you may want to use :null_session instead.
before_filter :configure_permitted_parameters, if: :devise_controller?
#check_authorization
  protect_from_forgery with: :exception

rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_url, :alert => exception.message
end

protected
      def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:Name, :email, :password, :Role])
          devise_parameter_sanitizer.permit(:account_update, keys: [:Name, :email, :password, :current_password, :Role])
end



end
