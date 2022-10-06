Rails.application.routes.draw do
  devise_for :login_users

  resources :nodes
  resources :places
  resources :images
  resources :regions
  resources :user_regions
  resources :user_roles
  resources :users
  resources :cities
  resources :states
  resources :countries
  resources :companies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/homes", to: "homes#index"
  root "homes#index"
  get "companies/states/:country_id", to: "companies#all_state" 
  get "/companies/states/cities/:state_id", to: "companies#all_city"
  # Defines the root path route ("/")
  # root "articles#index"
end
