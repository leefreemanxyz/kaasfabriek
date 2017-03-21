Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'
  resources :order_items, :orders, :products, :profiles, :photos, :carts

end
