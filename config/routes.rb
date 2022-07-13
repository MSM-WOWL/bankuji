Rails.application.routes.draw do
  devise_for :users
  root to: "stocks#index"
  resources :stocks, only: [:index, :new, :create, :destroy]
end
