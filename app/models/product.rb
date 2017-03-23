class Product < ApplicationRecord
  has_many :photos, dependent: :destroy

  def self.order_by_name
    order(:name)
  end

end
