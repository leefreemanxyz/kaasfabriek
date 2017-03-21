Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post ':product_id/add' => "cartsController#create"
  resources :order_items, :orders, :products, :profiles, :photos, :carts

end
d
