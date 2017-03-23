class ProductsController < ApplicationController
  include CurrentCart

  before_action :set_cart

  def index
    @products = Product.all
  end

  def show #shows just one product
    @product = Product.find(params[:id])
  end

end
