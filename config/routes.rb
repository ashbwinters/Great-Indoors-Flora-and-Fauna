Rails.application.routes.draw do
  resources :gardens, only: [:create, :index, :show, :update, :delete]
  resources :houseplants, only: [:index, :show]
  resources :users, only: [:create]
  post "login", to: "authentication#login"
end
