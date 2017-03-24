class Cart
  attr_reader :items, :total_price
  def initialize(session) #[1,2,3]
    @items = []

    session.each do |item|
      id = item["product_id"]
      product = Product.find(id)
      item = CartItem.new(product, item["amount"])
      @items << item
    end
    calculate_total_price
  end

  def add_item(product_id, amount = 1)
    id = product_id.to_i
    if @items != []
      @items.each do |item|
        # check of het product_id al bestaat in de @items
        item_id = item.product_id
        if item_id == id
          # TRUE: item.amount verhogen met 1
          item.amount += 1
          return
        end
      end
    end
    product = Product.find(id)
    item = CartItem.new(product, amount)
    @items << item
  end

  def calculate_total_price
    @total_price = 0.0
    @items.each do |item|
      @total_price += item.item_total_price
    end
  end

end

class CartItem
  attr_reader :product_id
  attr_accessor :amount

  def initialize(product, amount)
    @product_id = product.id
    @amount = amount
  end

  def item_total_price
    total_price = product.price * @amount
  end


  def product
    Product.find(@product_id)
  end
end
