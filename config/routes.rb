Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get '/login', to: 'static_pages#login'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',    to: 'users#new'
end