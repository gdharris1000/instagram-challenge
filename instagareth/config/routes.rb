Rails.application.routes.draw do
  get 'posts/index'
  resources :users
  resources :posts
  root 'posts#index'

  get 'login', to: 'users#index'
  post 'login', to: 'users#login'
  get 'welcome', to: 'users#welcome'
  get 'logout', to: 'users#logout'
end
