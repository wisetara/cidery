class UserLocation < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  resourcify
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end
