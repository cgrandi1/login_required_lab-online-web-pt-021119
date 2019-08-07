class SessionsController < ApplicationController
  def new
    
  end

  def create
    if params[:name] == nil || params[:name].empty? == true
      redirect_to controller: 'sessions', action: 'new'
    else 
      session[:name] = params[:name]
      redirect_to show_path
    end 
  end 

  def destroy 
    session.delete :name
  end 
end