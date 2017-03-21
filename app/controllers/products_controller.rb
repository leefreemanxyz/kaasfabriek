class ProductsController < ApplicationController

  def show #shows just one product
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

end
