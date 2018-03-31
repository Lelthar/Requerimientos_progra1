class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:apellidos,:nombre_usuario,:direccion,:email,:password,:password_confirmation,:tipo_cuenta])
  	#devise_parameter_sanitizer.permit(:sign_in, keys: [:nombre_usuario,:password])
  end

end
