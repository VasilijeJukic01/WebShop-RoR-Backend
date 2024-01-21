Rails.application.routes.draw do
  root   "static_pages#home"
  get    "/help",    to: "static_pages#help"
  get    "/signup",  to: "users#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"

  resources :users, path: "admin/users"
  resources :account_activations, only: [:edit]
  resources :orders, path: "admin/orders"
  resources :deliveries, path: "admin/deliveries"
  resources :articles, path: "admin/articles"
  resources :categories, path: "admin/categories"
  resources :stores, path: "admin/stores"
end
