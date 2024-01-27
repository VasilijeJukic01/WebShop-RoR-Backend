Rails.application.routes.draw do
  root   "static_pages#home"
  get    "/signup",  to: "users#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"

  resources :users, path: "api/users"
  resources :account_activations, only: [:edit]
  resources :orders, path: "api/orders"
  resources :articles, path: "api/articles"
  resources :categories, path: "api/categories"
  resources :stores, path: "api/stores"
  resources :order_articles, path: "api/order_articles"
end
