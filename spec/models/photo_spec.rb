require 'rails_helper'

RSpec.describe Photo, type: :model do
  describe "associations" do
    let!(:product) {create :product}
    let!(:photo) {create :photo, product:product, profile:nil}
    it "is associated with a product" do
      expect{photo.product}.to eq(product)
    end
  end
end
