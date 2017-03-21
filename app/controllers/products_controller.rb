class ProductsController < ApplicationController
  include CurrentCart

  before_action :set_cart

  def index
    @products = Product.all
    @items = @cart.items
  end

  def show #shows just one product
    @product = Product.find(params[:id])
    @cart = Cart.new

    
  end

  def index
    @products = Product.all
  end

end
