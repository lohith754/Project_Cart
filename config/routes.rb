Rails.application.routes.draw do
  resources :line_items
  resources :carts

  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'


  
  get 'gallery/index'
  get 'gallery/checkout'
  get 'gallery/search'
  post 'gallery/search'
  post 'gallery/checkout'
  get 'gallery/purchase_complete'

  resources :estores
  devise_for :users
  
  get 'home/index'
  get 'home/product'
  get 'home/about'
  get 'home/blog'
  get 'home/contact'
  
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
