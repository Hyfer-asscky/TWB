FactoryGirl.define do
  factory :product do
    title "Product Title"
    price "1000"
    taxable false
    compare_at_price "100"
    product_code "123152"
    height 100.0
    width 100.0
    grams 100.0
    origin_of_manufacture "Canada"
    materials_used "Steel"
    date_of_manufacture DateTime.now
  end
end
