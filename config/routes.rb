Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :icons
      resources :users

      root to: "icons#index"
    end
  resources :icons do
    member do
      get :like
    end
  end
  resource :user, only: [:show] #test de création de route pour afficher le status de l'utilisateur
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "icons#index"
end
