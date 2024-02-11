require_relative 'ar.rb'


rand(1..8).times do
  Product.create(
    name: Faker::Vehicle.make,
    description: Faker::Lorem.sentence,
    price: rand(1..100),
    stock_quantity: rand(1..50),
    category_id: rand(29..38)


  )
end
