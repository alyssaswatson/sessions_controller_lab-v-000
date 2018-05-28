class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:username] != nil
      session[:username] = params[:username]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :username
  end
end
