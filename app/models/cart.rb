class Cart
  attr_reader :items, :total_price
  def initialize(session) #[1,2,3]
    @items = []

    session.each do |item|
      #product = Product.find(["product_id"])
      add_item(item["product_id"], item["amount"])
    end
    calculate_total_price
  end

  def add_item(id, amount = 1)
    id = id.to_i
    product = Product.find(id)
    item = CartItem.new(product, amount)
    @items << item
  end

  def calculate_total_price
    @total_price = 0.0
    @items.each do |item|
      @total_price += item.product.price
    end
  end

end

class CartItem
  attr_reader :product_id, :amount

  def initialize(product, amount)
    @product_id = product.id
    @amount = amount
  end

  def product
    Product.find(@product_id)
  end
end
