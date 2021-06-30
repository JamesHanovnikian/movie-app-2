class ActorsController < ApplicationController
  def create

    #Happy Path /Sad Path
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
    )
    if actor.save
      render json: actor.as_json
    else
      render json: { errors: actor.errors.full_messages }
    end
  end
end
