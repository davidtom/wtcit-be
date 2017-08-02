Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/category", to: "categories#random_image"
  post "/validate_guess", to: "guesses#validate"

  # resources :guesses, only: [:update]
  # resources :categories, only: [:index, :show, :create, :update, :destroy] do
  #   resources :images, only: [:index, :show, :create, :update, :destroy]
  # end

end
