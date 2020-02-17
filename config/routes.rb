Rails.application.routes.draw do

  # sessions
  get 'sessions/new'

  # users
  resources :users

  # static_pages
  get 'static_pages/home'
  get 'static_pages/help'


end
