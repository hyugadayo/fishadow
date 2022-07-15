Rails.application.routes.draw do
  resources :fishadow, only: :index 
  resources :fishings
  root to: 'fishadow#index'
end
