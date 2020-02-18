Rails.application.routes.draw do
  resources :posts
  root 'static_pages#home'
  # sessions
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  # users
  resources :users

  get '/sign_up', to: 'users#new'

  # static_pages
  get 'static_pages/home'
  get 'static_pages/help'



end
