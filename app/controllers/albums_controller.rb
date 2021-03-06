class AlbumsController < ApplicationController
  before_action :find_album, only: [:show, :edit, :update, :destroy]
  
  def show
    @album = Album.find(params[:id])
  end
  
  def index
    @albums = Album.all
  end
  
  def edit
  end
  
  def update
    if @album.update(album_params)
      redirect_to @album
    else
      render :edit
    end
  end
  
  def new
    @album = Album.new
  end
  
  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to @album
    else
      render :new
    end
  end
  
  def destroy
    @album.destroy
    redirect_to albums_path, notice: "Destoyed Album"
  end
  
  private
  
  def album_params
    params.require(:album).permit(:name, :upvote, :description, :artist)
  end
  
  def find_album
    @album = Album.find(params[:id])
  end
end