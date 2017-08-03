Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: [:index]
  resources :images, only: [:create]
  resources :games, only: [:create]
  resources :comments, only: [:create]
  resources :guesses, only: [:create]

  get "/games/current", to: "games#current"

end
