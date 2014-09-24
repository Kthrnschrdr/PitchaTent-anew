class LoginsController < ApplicationController
  skip_before_filter :authorize
  
  def new
  end
  
  def create
    @person = Person.find_by_email(params[:email])    
    if @person && @person.authenticate(params[:password])
      session[:person_id] = @person.id
      redirect_to parks_path
    else
      redirect_to login_path, :alert => "Invalid Login"
    end
  end
  
  def destroy
    session[:person_id] = nil
    redirect_to person_path
  end
  
end
