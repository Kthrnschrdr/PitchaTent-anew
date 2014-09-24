class ApplicationController < ActionController::Base
  protect_from_forgery

  skip_before_filter :authorize
  
  def authorize
    if current_person.nil?
      redirect_to signup_path, :alert => "You need to log in to do that."
    end
  end
  
  def current_person
    if session[:person_id]
      @current_person ||= Person.find(session[:person_id])
    end
  end
  
  helper_method :current_person
  hide_action :current_person
  
end
