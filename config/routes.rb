Rails.application.routes.draw do
  root   "static_pages#home"
  get    "/signup",  to: "users#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"

  resources :users, path: "admin/users"
  resources :account_activations, only: [:edit]
  resources :orders, path: "admin/orders"
  resources :articles, path: "admin/articles"
  resources :categories, path: "admin/categories"
  resources :stores, path: "admin/stores"
  resources :order_articles, path: "admin/order_articles"
end
