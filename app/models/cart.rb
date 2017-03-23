class Cart
  attr_reader :items, :total_price
  def initialize(session) #[1,2,3]
    @items = []

    session.each do |item|
      product = Product.find(item)
      add_item(product)
    end
    calculate_total_price
  end

  def add_item(product, amount = 1)
    product = Product.find(product)
    item = CartItem.new(product)
    @items << item

    #item = {"product_id"=>product.id, "amount"=> amount}
    #if shopping_cart have key + 1, else add
  end

  def calculate_total_price
    @total_price = 0.0
    @items.each { |item| @total_price += item.price }
  end

end

class CartItem
  attr_reader :product, :name, :price

  def initialize(product)
    @product = product
    @name = product.name
    @price = product.price

  end

end
