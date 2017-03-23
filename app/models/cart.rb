class Cart
  attr_reader :items
  def initialize(session) #[1,2,3]
    @items = []

    session.each do |item|
      product = Product.find(item)
      add_item(product)
    end
  end

  def add_item(product, amount = 1)
    product = Product.find(product)
    item = CartItem.new(product)
    @items << item
    debugger

    #item = {"product_id"=>product.id, "amount"=> amount}
    #if shopping_cart have key + 1, else add
  end

end

class CartItem
  attr_reader :product

  def initialize(product)
    @product = product

  end

end
