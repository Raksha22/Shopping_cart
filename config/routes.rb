Rails.application.routes.draw do
 
  devise_for :users
  resources :products
  get '/search' => 'products#search', :as => 'search_page'
  get '/payment' => 'orders#payment', :as => 'payment_option'
  post 'orders/place_order'
 root 'products#index'
 resources :orders do
   resources :line_items
 end
 resource :carts, only: [:show]

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
