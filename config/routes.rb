Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/handle_comment", to: "comments#handle_comment"
  get "/categories/images", to: "categories#image"
  get "/categories", to: "categories#index"
  get "/users", to: "users#retrieve"

  # post "/validate_guess", to: "guesses#validate"
  resources :guesses, only: [:create]

  resources :images, only: [:create]

  # resources :guesses, only: [:update]
  # resources :categories, only: [:index, :show, :create, :update, :destroy] do
  #   resources :images, only: [:index, :show, :create, :update, :destroy]
  # end

end
