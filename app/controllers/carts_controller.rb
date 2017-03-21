class CartsController < ApplicationController
  before_action set_cart

  def create
    @cart << params[:product_id, :quantity]
  end


  private
    def set_cart
      @cart = session[:cart] ||= []
    end
end
