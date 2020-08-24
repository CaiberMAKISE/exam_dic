Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  resources :posts
  root 'posts#index'
end
