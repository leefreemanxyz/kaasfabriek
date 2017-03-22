class ProductsController < ApplicationController
  include CurrentCart

  before_action :set_cart

  def index
    @products = Product.all
    @photos = @product.photos
    @items = @cart.items
  end

  def show #shows just one product
    @product = Product.find(params[:id])


  end



end
