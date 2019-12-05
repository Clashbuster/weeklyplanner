Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/login'
  # get 'sessions/welcome'

  resources :plans
  resources :account_rolls
  resources :rolls
  resources :groups
  resources :account_groups
  resources :accounts
  resources :sessions

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    post '/logout', to: 'sessions#destroy'
    get '/signup', to: 'accounts#new'
    post '/signup', to: 'accounts#create'
    get '/plans', to: 'plans#index'

    
    # root to: "plans#index"
  #  get 'authorized', to: 'sessions#page_requires_login'
  #  get "log_out" => "sessions#destroy", :as => "log_out"
  #  get "sign_up" => "accounts#new", :as => "sign_up"
  #  root :to => "accounts#new"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
