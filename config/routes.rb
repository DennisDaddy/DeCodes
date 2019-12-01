Rails.application.routes.draw do
  root  'pages#home'
  get '/about', to: 'pages#about'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts
  resources :categories
end
