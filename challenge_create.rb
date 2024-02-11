require_relative 'ar.rb'
# In the challenge_create.rb file:

#     Create three new products using the three different ways to create new AR objects.
#     Ensure that all three new products are persisted to the database, without validations errors.
#     Create a Product object that is missing some required columns.
#     Attempt to save this product and print all the AR errors which are generated.

willsSoup = Product.create(name: 'Willis Soup', description: '6 - 312ml can', price: '12', stock_quantity: '34', category_id: '1')

puts "you just created #{willsSoup.inspect}"

newitem = Product.new
 newitem.name = 'Sauce'
 newitem.description = 'got the sauce'
 newitem.price = '45'
 newitem.stock_quantity = '16'
 newitem.category_id = '3'


newestitem = Product.new do |coding|
  coding.name = 'yumyum cookies'
  coding.description = 'ew pack of cookies'
  coding.price = '42.4'
  coding.stock_quantity = '34'
  coding.category_id = '4'
end
puts "#{newitem.save}"
puts "#{newestitem.save}"
soupdawillMISSINGSTUFF = Product.create(name: 'soupdawill', price: '12',  category_id: '1')
##trying to shw error
puts "#{soupdawill.save}"
puts "#{soupdawill.errors.full_messages}"
