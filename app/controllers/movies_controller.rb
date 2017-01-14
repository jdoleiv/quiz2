class MoviesController < ApplicationController
  def index
    @movie = Movie.order("RANDOM()").first
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :director)
  end
end
