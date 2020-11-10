class SessionsController < ApplicationController
  def login
      # nothing to do here!
  end

  def create
      session[:username] = params[:username]
      redirect_to '/blogs'
  end
  
  def destroy
    session.delete :username
  end 
end