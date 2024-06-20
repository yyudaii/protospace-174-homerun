class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # user管理機能マージ後以下必要？カラム名nameの確認要
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # private
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end
end
