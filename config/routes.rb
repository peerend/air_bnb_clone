Rails.application.routes.draw do
  devise_for :users

  resources :spaces
  resources :relationships

  root to: "spaces#index"
end
