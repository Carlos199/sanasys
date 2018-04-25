Rails.application.routes.draw do
  devise_for :users
  root to: 'dashboard#index'
  
  

  resources :sales do
    resources :sale_details
  end

  resources :items
  resources :units
  resources :towns
  resources :categories
  resources :brands

  #get 'validate_suggested_brand/index'
  get '/brands_suggestion', to: 'brands_suggestion#index'
  get '/validate_suggested_brand', to: 'validate_suggested_brand#index'


  #get 'validate_suggested_item/index'
  get '/items_suggestion', to: 'items_suggestion#index'
  get '/validate_suggested_item', to: 'validate_suggested_item#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
