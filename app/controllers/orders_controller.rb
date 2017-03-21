class OrdersController < ApplicationController
  before_action :set_order
  def new
    @order = User.orders.new
    @cart_items.each do |product|
    @order.order_items.new(product:product)
    end
  end


  private
    def set_cart
      @cart_items = session[:cart]
    end
end
