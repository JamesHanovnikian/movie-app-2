Rails.application.routes.draw do
  get "/actor_info", controller: "actors", action: "new_actor"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
