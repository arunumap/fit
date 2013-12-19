class SessionsController < ApplicationController

  
  def create
    auth = env["omniauth.auth"]
    if auth["provider"] == "identity"
      session[:user_id] = auth["uid"]
      redirect_to admins_users_path
    else
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      measurement = Measurement.get_fitbit_data(current_user)
      redirect_to user_path(user.id)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end