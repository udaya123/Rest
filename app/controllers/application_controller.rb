class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
protected
      def configure_permitted_parameters
          devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:Name, :email, :password, :Role) }
          devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:Name, :email, :password, :current_password, :Role) }
end


end
