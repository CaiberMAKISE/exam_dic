Rails.application.routes.draw do
  get '/admin', to: 'admin/users#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  resources :users, only: [:show]
  resources :posts
  root 'posts#index'
end
