class ParksController < ApplicationController
  
  def index
    @parks = Park.all
  end
  
  def show
    @park = Park.find(params["park_id"])
    @stories = @park.stories
  end

  def new
  end

  def create
    @park = Park.create({name: params["name"], address: params["address"]})
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    @park = Park.find(params[:id])
    @park.update_attributes({name: params["name"], address: params["address"]})
  end

  def destroy
    @park = Park.find(params[:id]).delete
  end

  def parks_nearby
    @person = Person.find(params[:id])
    @person.location = (params["location"])
    @parks_nearby = Park.near(@person.location, 100)
  end

  def favorite_parks
    @person = Person.find(params[:id])
    @park = Park.find(params["park_id"])
    @person.parks<<@park
  end
  
end
