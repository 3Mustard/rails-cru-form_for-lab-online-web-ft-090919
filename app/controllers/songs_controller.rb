class SongsController < ApplicationController
  
  def index 
  end 
  
  def new 
  end 
  
  def create 
  end 
  
  def show 
  end 
  
  def edit 
  end 
  
  def update 
  end 
  
  private 
  
  def get_song
    params.require(:song).permit(:name)
end
