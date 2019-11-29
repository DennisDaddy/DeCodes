Rails.application.routes.draw do
  root  'posts#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts
  resources :categories
end
