class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_i(s)
   !!(s =~ /\A[-+]?[0-9]+\z/)
  end

end
