require_relative 'ar.rb'
require 'active_support'
require "bigdecimal"
number_of_products = Product.count

productover10money = Product.select('name', 'price').where('price >= 10.00').where('name LIKE ?', "#{'C'}%")

procut_Stock_under_five = Product.select('stock_quantity').where('stock_quantity <= 5')
selectallproducts = Product.all.pluck

puts "There are #{number_of_products} in the products table."
puts "#{productover10money.pluck('name', "price")}"
puts "There are #{procut_Stock_under_five.count} products under 5 stock left"
puts "#{selectallproducts}"
##puts "There are #{last_categ.inspect} in the products table."
