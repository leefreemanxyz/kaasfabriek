class Product < ApplicationRecord
  validates :name, presence:true
  validates :name, uniqueness:true
  validates :price, presence:true
  has_many :photos, dependent: :destroy

  def self.order_by_name
    order(:name)
  end

end
