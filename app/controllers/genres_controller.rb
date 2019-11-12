class GenresController < ApplicationController
  
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
  
  def get_genre
    @genre = Genre.find(params[:id])
  end 
  
  def genre_params
    params.require(:genre).permit(:)
  end 
end








