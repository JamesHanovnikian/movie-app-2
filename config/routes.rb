Rails.application.routes.draw do
  post "/actors", controller: "actors", action: "create"

  get "/movie_info", controller: "movies", action: "new_movie"

  post "/movies", controller: "movies", action: "create"

  patch "/movies/:id", controller: "movies", action: "update"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
