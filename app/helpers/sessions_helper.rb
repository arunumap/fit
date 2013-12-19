module SessionsHelper

  def logged_in?
    session[:user_id].present?
  end

  def authenticated!
    unless logged_in?
      redirect_to root_url
    end
  end
#TODO if user.findby sessions id returns null delete the cookie and return new user show page
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_admin_user
    @current_admin_user ||= Admin.find_by(id: session[:user_id])
  end
end