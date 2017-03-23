module CurrentCart
  extend ActiveSupport::Concern


  private

  def set_cart
    session[:shopping_cart] ||= []
    @cart = session[:shopping_cart]

  end
end
