Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get '/static_pages/home'
  get  '/help',    to: 'static_pages#help'
  get  '/static_pages/about',   to: 'static_pages#about'
  get  '/static_pages/contact', to: 'static_pages#contact'
  get  'users/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end