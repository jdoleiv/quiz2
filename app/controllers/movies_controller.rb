class MoviesController < ApplicationController
  def index
    @movie = Movie.order("RANDOM()").first
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)
    redirect_to root_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :director)
  end
end
