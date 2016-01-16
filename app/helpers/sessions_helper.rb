module SessionsHelper
  
  def sign_in(user)
    remember_token = SecureRandom.urlsafe_base64
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, Digest::SHA1.hexdigest(remember_token))
  end
  
  def sign_out
    cookies.delete(:remember_token)
  end
  
  def current_user
    return nil unless cookies[:remember_token]
    @current_user ||= User.find_by(remember_token: Digest::SHA1.hexdigest(cookies[:remember_token]))
  end
  
end
