Rails.application.routes.draw do
  use_doorkeeper
  resources :courses
  resources :users
end
