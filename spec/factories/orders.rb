FactoryGirl.define do
  factory :order do
    user nil
    status "MyString"
    total_price "9.99"
  end
end
