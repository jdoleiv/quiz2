class MoviesController < ApplicationController
  def index
    @movie = Movie.order("RANDOM()").first
  end

  def new
    @movie = Movie.new
  end

end
