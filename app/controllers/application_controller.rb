class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  sign_in (Devise::SessionsController) #new - Permits only the authentication keys (like email)
  sign_up (Devise::RegistrationsController) #create - Permits authentication keys plus password and password_confirmation
  account_update (Devise::RegistrationsController) #update - Permits authentication keys plus password, password_confirmation and current_password

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_santitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password)}
  end
end
