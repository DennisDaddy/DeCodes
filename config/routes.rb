Rails.application.routes.draw do
  root  'pages#index'
  resources :categories
  resources :posts
end
