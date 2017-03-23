class CartsController < ApplicationController
  include CurrentCart

  before_action :set_cart

  def create
    @product = Product.find(params[:product_id])
    session[:shopping_cart] << (params[:product_id])
    redirect_to root_path, notice:"Item successfully added"
  end

  def show
    @cart
  end




end
