class SessionsController < ApplicationController
  class AuthenticationError < StandardError; end

  def new
  end

  def create
    if user&.authenticate(params.require(:password))
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully.'
    else
      flash[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'logged out'
  end

  private

  def user
    @user ||= User.find_by(email: params.require(:email))
  end

end