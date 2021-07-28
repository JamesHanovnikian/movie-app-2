Rails.application.routes.draw do
  #movies routes

  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  # Actors

  get "/actors" => "actors#index"
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"

  #Movie Genre

  post "/movie_genre" => "movie_genres#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
