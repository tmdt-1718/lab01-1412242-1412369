Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home', to: 'home#index'
  get '/about', to: 'about#index'
  get '/articles', to: 'articles#index'
end
