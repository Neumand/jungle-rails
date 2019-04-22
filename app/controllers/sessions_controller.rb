class SessionsController < ApplicationController
  
  def new
  end

  def create
    email = params[:email].strip.downcase
    if user = User.authenticate_with_credentials(email, params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
