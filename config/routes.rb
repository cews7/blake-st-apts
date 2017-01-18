Rails.application.routes.draw do
  resources :units
  resources :renters, only: [:index]
  resources :owners, only: [:index, :show]
end
