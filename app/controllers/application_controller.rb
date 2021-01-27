class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? #protectedを承認するもの
  
  def after_sign_in_path_for(resource)
    if current_end_user
      end_user_path(resource)
    end
  end

  def after_sign_out_path_for(resource)
    root_path(resource)
  end 


  
  protected
  def configure_permitted_parameters
    needs = [:first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :address, :tel_number ]
    devise_parameter_sanitizer.permit(:sign_up, keys: needs)
  end
end
