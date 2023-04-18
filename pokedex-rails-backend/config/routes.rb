Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  namespace :api, defaults: { format: :json } do
    # define routes here to include them in the api namespace
    get "/pokemon/types", to: "pokemon#types"
    
    resources :items, only: [:update, :destroy]

    resources :pokemon, only: [:show, :update, :index, :create] do
        resources :items, only: [:index, :create]
    end
  end
  
end
