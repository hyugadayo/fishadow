Rails.application.routes.draw do
  devise_for :users
  resources :fishadow, only: :index 
  resources :fishings
  root to: 'fishadow#index'
end
