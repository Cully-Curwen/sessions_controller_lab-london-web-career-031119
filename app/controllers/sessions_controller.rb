class SessionsController < ApplicationController
  
  def hello
    if session[:name] && session[:name] != nil && !session[:name].empty?
      @name = session[:name]
    else
      redirect_to login_path
    end
  end
  
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] && session[:name] != nil && !session[:name].empty?
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
    elsif session[:name] == nil
      session[:name]
    end
    redirect_to login_path
  end

end
