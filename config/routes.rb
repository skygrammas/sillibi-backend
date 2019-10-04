Rails.application.routes.draw do
  use_doorkeeper do
    controllers tokens: 'custom_tokens'
  end
  resources :courses
  resources :users
  resources :assignments
  resources :syllabuses
end
