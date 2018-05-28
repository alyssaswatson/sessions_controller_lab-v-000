class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:username] != nil
      session[:username] = params[:username]
      if params[:name] != nil
        session[:name] = params[:name]
      end
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :username
  end
end
