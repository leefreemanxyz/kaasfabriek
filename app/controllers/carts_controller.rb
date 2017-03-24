class CartsController < ApplicationController
  include CurrentCart

  before_action :set_cart

  def create
    @cart.add_item(params[:product_id])
    session[:shopping_cart] = @cart.items
    redirect_to root_path, notice:"Item successfully added"
  end

  def show
    @cart
  end




end
