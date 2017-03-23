class Cart
  attr_reader :items
  def initialize(cart_items)
    items = []
    cart_items.each do |item|
      product = Product.find(item)
      add_item(product,items)
    end
  end

  def add_item(product, items, amount = 1)
    item = {"product_id"=>product.id, "amount"=> amount}
    @cart << item
    #if shopping_cart have key + 1, else add
  end


end
