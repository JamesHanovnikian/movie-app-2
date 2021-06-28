class ActorsController < ApplicationController
  def new_actor
    actor = Actor.new(
      first_name: "Brad",
      last_name: "Pitt",
      known_for: "Fight Club",
    )
    actor.save
    render json: actor.as_json
  end
end
