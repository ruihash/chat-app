class ApplicationController < ActionController::Base
  #authenticate_user!によりログインしていないユーザーをログインページの画面に促すことができます。
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private #ユーザーが新しくアカウントを作成するとき、名前（:name）といった情報も受け入れるように設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end


end
