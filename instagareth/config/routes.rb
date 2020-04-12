Rails.application.routes.draw do
  get 'posts/index'
  resources :users
  resources :posts
  root 'users#index'
end
