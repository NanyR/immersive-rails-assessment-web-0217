class SessionsController < ApplicationController

  def new

  end

  def create
    user=User.find_by(username: params[:username])
    if user
      session[:user_id]= user_id
    end
  end

end
