class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top]
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    # books_path
    #user 作成後に下記を使う
    user_path(current_user.id)
    # flash[:success] = 'Signed in successfully.'
  end
  
  def after_sign_up_path_for(resource)
    # books_path
    #user 作成後に下記を使う
    user_path(current_user.id)
    # flash[:success] = 'Welcome! You have signed up successfully.'
  end
  
  def after_sign_out_path_for(resource)
    root_path
    # flash[:success] = 'Signed out successfully.'
  end
  
  
  
  protected
  
  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
