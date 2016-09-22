Rails.application.routes.draw do
  resources :categories
  resources :products
  get '/search' => 'products#search'
  root 'products#index'
end
