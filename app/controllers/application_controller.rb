class ApplicationController < ActionController::Base
  include Pundit
  before_action :set_current_user

  protected

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def current_user
    Current.user
  end
end
