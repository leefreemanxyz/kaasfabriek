FactoryGirl.define do
  factory :order_item do
    order nil
    price "9.99"
    quantity 1
    product nil
  end
end
