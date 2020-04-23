module SessionsHelper
  def log_in(user)
    remember_token = user.create_remember_token
    user.update_attribute(:remember_token, remember_token)
    cookies.permanent.signed[:remember_token] = remember_token
    current_user
  end

  def current_user
    @current_user ||=  User.find_by(remember_token: cookies.signed[:remember_token])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    @current_user = nil
    cookies.delete(:remember_token)
  end

  def redirect_back_or(default)
    redirect_to(session[:fowarding_url] || default)
    session.delete(:fowarding_url)
  end

  def store_location
    session[:fowarding_url] = request.original_url if request.get?
  end
end
