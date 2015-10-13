class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :authenticate_user!, :only => [:show, :index]
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:username, :team, :profile, :works, :avatar)
  end
end
