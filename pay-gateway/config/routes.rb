Rails.application.routes.draw do
  root 'indices#index'
  resources :indices
end
