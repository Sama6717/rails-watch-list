class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.find(params[@movie])
  end

  def destroy
    @movie = movie.find(params[:id])
    @movie.destroy
  
  end
    
end
