class ApplicationController < ActionController::Base
  include Pundit
  before_action :set_current_user

  rescue_from Pundit::NotAuthorizedError, with: :handle_unauthorized

  protected

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def current_user
    Current.user
  end

  def handle_unauthorized
    redirect_to root_url, alert: 'You have no access to this page.'
  end
end
