Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'

  resources :plant_type, only: [:index]
  resources :operation_type, only: [:index]
  resources :user, only: [:index, :create]
  resources :field, only: [:index, :show, :create]
end
