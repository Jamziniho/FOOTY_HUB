class PagesController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def home
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :level, :age, :position,
      :password, :password_confirmation) }
  end
end
