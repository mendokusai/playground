class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  def authorize_user!
  	authenticate_user!

  	unless user_signed_in?
  		redirect_to root_path, alert: "Access Denied."
  	end
  end


  protected
  def configure_permitted_parameters
	  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password) }
	end

  
end
