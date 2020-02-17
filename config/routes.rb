Rails.application.routes.draw do

  # sessions
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  # users
  resources :users

  # static_pages
  get 'static_pages/home'
  get 'static_pages/help'



end
