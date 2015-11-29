class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :cas_filter
 
  def cas_filter
    RubyCAS::Filter.filter(self)
  end

  def logout
  	reset_session
  	RubyCAS::Filter.logout(self)
  end
end
