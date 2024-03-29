Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :games do
    resources :players
  end
  get "games/:id/formation", to: "games#formation", as: :formation
  # Defines the root path route ("/")
  # root "posts#index"
  get "profile", to: "pages#profile"
  patch "profile", to: "users#updateProfile"
  get "dashboard", to: "pages#dashboard"
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
