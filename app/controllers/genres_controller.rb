class GenresController < ApplicationController
  
  def index
    @genres = Genre.all
  end 
  
  def new
    @genre = Genre.new
  end 
  
  def create 
    @genre = Genre.new(genre_params)
    @genre.save 
    redirect_to genre_path(@genre)
  end 
  
  def show 
    get_genre
  end 
  
  def edit 
    get_genre
  end 
  
  def update 
    get_genre
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end 
  
  private 
  
  def get_genre
    @genre = Genre.find(params[:id])
  end 
  
  def genre_params
    params.require(:genre).permit(:name)
  end 
end








