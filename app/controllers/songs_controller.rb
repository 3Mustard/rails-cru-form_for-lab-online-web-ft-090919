class SongsController < ApplicationController
  
  def index 
    @songs = Song.all
  end 
  
  def new 
    @song = Song.new
  end 
  
  def create
     @song = Song.new(song_params(:name,:artist_id,:genre_id))
     @song.save
     redirect_to song_path(@song) 
  end 
  
  def show 
    get_song
  end 
  
  def edit 
    get_song
  end 
  
  def update
    get_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end 
  
  private 
  
  def get_song
    @song = Song.find(params[:id])
  end 
  
  def song_params 
    params.require(:song).permit(:name)
  end 
end
