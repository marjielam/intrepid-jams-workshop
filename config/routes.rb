Rails.application.routes.draw do
  resources :games, only: :index
  resources :teams, only: [:index, :show]
end
