class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def new_movie
    Movie.all
    movie = Movie.new(
      title: "Finding Nemo",
      year: 2005,
      plot: "Fishes journey",
    )
    movie.save
    render json: movie.as_json
  end
end
