Rails.application.routes.draw do
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
       

  # Defines the root path route ("/")
  # root "articles#index"
end
