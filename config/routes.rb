Rails.application.routes.draw do
  resources :plans
  resources :account_rolls
  resources :rolls
  resources :groups
  resources :account_groups
  resources :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
