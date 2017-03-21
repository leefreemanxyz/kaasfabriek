class Cart
  belongs_to :product
  attr_reader :items
  def initialize(cart)
    @items = []
    cart.each do |item|
      product = Product.find(item[:product_id])
      add_item(product, item["amount"])
    end
  end

  def add_item(product, amount = 1)
    item = {"product_id"=>product.id, "amount"=> amount}
    @items << item
    #if shopping_cart have key + 1, else add
  end


end
