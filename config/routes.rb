Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :categories
  resources :comments
  resources :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "welcome#homepage"
  get "dashboard" , to: "welcome#dashboard"
  get "users" , to: "welcome#users"
  get "admins" , to: "welcome#admins"
  # get "delete/:id" , to: "welcome#destroy"
end
