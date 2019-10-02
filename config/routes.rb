Rails.application.routes.draw do
  use_doorkeeper
  resources :courses
  resources :users
  resources :syllabuses
end
