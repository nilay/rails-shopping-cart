Rails.application.routes.draw do
  root 'products#index'

  resources :users
  resources :sessions, :path => "login"
  resources :products
  resources :carts, only: [:index]
  resources :order_items, only: [:create, :destroy]

  get '/cart/checkout' => 'carts#checkout'
  get '/cart/final' => 'carts#final'


end