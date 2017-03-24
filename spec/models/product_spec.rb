require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    let!(:product) {create :product, name:"Leiden Kaas"}
    it "invalid without a name" do
      newProduct = Product.new(name:"")
      newProduct.valid?
      expect(newProduct.errors).to have_key(:name)
    end
    it "invalid without a price" do
      newProduct = Product.new(price:"")
      newProduct.valid?
      expect(newProduct.errors).to have_key(:price)
    end
    it "is invalid if is name is duplicate" do
      newProduct = Product.new(name:"Leiden Kaas")
      newProduct.valid?
      expect(newProduct.errors).to have_key(:name)
    end
  end
end
