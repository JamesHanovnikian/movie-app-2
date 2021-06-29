Rails.application.routes.draw do
  get "/actor_info", controller: "actors", action: "new_actor"
  get "/movie_info", controller: "movies", action: "new_movie"

  post "/movies", controller: "movies", action: "create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
