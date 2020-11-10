class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  layout "main"
  
  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  def logged_in?
    current_user != nil
  end

  # <% if logged_in? -%>Welcome, <%= current_user.name %><% end -%>
end
