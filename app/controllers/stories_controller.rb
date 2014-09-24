class StoriesController < ApplicationController
  
  def index
    @person = Person.find(params[:id])
    @stories = @person.stories
  end

  def show
    @person = Person.find(params[:id])
    @story = Story.find(params[:id])
  end
  
  def new
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.find(params[:id])
    @story = Story.create({story: params["story"], park_id: params["park_id"], person_id: params[:id]})
  end

  def edit
    @person = Person.find(params[:id])
    @story = Story.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @story = Story.find(params[:id])
    @story.update_attributes({story: params["story"], park_id: params["park_id"], person_id: params[:id]})
  end

  def destroy
    @person = Person.find(params[:id])
    @story = Story.find(params[:id]).delete
  end
  
end
