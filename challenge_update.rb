require_relative 'ar.rb'

productwithstock40 = Product.select('stock_quantity').where('stock_quantity >= 40')
puts "#{productwithstock40.pluck('name', "stock_quantity")}"
puts "you added 1 to the stock of #{productwithstock40.update_all('stock_quantity =  stock_quantity + 1')}"
puts "#{productwithstock40.pluck('name', "stock_quantity")}"
