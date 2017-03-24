module CurrentCart
  extend ActiveSupport::Concern


  private

  def set_cart
    session[:shopping_cart] ||= []
    @cart = Cart.new(session[:shopping_cart])
  end
end
