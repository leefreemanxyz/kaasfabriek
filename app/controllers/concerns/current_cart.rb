module CurrentCart
  extend ActiveSupport::Concern
  

  private

  def set_cart
    session[:shopping_cart] ||= []
    @cart ||= ShoppingCart.new(session[:shopping_cart])
  end
end
