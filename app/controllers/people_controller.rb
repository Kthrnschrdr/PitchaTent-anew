class PeopleController < ApplicationController
  
  def index
    @people = Person.all
  end
  
  def show
    @person = Person.find(params[:id])
  end

  def new
  end

  def create
    @person = Person.new({name: params["name"]})
    @person.save
  end

  def edit
    @person = Person.find(params[:id])  
  end

  def update
    @person = Person.find(params[:id])
    @person.update_attributes({name: params["name"]})
  end

  def delete
    @person = Person.find(params[:id]).delete
  end
  
end
