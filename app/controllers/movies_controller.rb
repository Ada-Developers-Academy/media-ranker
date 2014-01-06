class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update]
  def index
    @movies = Movie.all
  end

  def show
   @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit
    end
  end
  private
  
  def movie_params
    params.require(:movie).permit(:name, :upvote, :description, :director)
  end
  
  def find_movie
    @movie = Movie.find(params[:id])
  end
end
