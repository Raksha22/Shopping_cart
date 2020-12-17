Rails.application.routes.draw do
 
  devise_for :users
  get 'cards/show'
  get 'shops/index'
  resources :products

  resources :shops, only:[:index, :show]
  resources :line_items
  resource :cards, only:[:show ]


  root 'shops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
