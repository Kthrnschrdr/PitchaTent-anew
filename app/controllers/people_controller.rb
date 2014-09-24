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
  
  def index
    @people = Person.all
  end

  def edit
    @person = Person.find(params[:id])  
  end

  def update
    @person = Person.find(params[:id])
    @person.update_attributes({name: params["name"]})
  end

  def destroy
    @person = Person.find(params[:id]).delete
  end

  def show
    @person = Person.find(params[:id])
  end
  
end
