class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  def anonymous_user?(userName)
    userName.blank? ? "anonymous" : userName
  end

end
