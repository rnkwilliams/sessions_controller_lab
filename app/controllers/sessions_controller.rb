class SessionsController < ApplicationController
  def new
  end
  
  def create
    session[:name] = params[:name]
    user = User.find_by(name: params[:name])
      if user && user.authenticate
    redirect_to '/'
  end

  def destroy
    session.delete :name
  end
end
