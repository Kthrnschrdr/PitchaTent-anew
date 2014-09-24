class PeopleController < ApplicationController
  
  skip_before_filter :authorize
  
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(params[:person])    
    if @person.save
      PersonMailer.welcome_email(@person).deliver
      session[:person_id] = @person.id
      redirect_to parks_path
    else
      redirect_to signup_path, :alert => "Signup Error"
    end
  end
  
end
