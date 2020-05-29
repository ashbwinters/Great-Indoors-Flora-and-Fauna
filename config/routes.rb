Rails.application.routes.draw do
  resources :gardens, only: [:create, :index, :show, :update, :delete]
  resources :houseplants, only: [:index, :show]
  resources :users, only: [:create, :index, :show]
  post "login", to: "authentication#login"
  get "gardenIndex", to: "gardens#index_by_user"
end
