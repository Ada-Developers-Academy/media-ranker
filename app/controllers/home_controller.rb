class HomeController < ApplicationController
  def index
    @books  = Book.all.limit(10)
    @movies = Movie.all.limit(10)
    @albums = Album.all.limit(10)
  end
end
