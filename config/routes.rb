Rails.application.routes.draw do
  resources :fishings
  root to: 'fishings#index'
end
