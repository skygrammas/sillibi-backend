Rails.application.routes.draw do
  use_doorkeeper
  resources :courses
  resources :users
  #get '/profile', to: 'users#index'
end
