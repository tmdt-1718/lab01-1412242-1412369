Rails.application.routes.draw do  
  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  get     "logout"   => "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  resources :users
  resources :about, only:[:index]
  resources :albums, only: [:index, :show]
  resources :blog, only: [:index]
  resources :home, only: [:index]
  resources :blogs
end
