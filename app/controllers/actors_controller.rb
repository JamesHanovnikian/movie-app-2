class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors.as_json
  end

  def create

    #Happy Path /Sad Path
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id],
    )
    if actor.save
      render json: actor.as_json
    else
      render json: { errors: actor.errors.full_messages }
    end
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || movie.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    actor.movie_id = params[:movie_id] || actor.movie_id
    actor.save
    render json: actor.as_json
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end

  def destroy
    actor = actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: "Movie successfully destroyed." }
  end
end
