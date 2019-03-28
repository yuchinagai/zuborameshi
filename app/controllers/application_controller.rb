class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def set_search
    @q = Recipe.ransack(params[:q])
    @recipes = @q.result.with_attached_image.find_newest_recipes(params[:page])
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :avatar])
  end
end
