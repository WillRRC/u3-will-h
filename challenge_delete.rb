require_relative 'ar.rb'

deletemyowncreationsadface = Product.find_by(name: 'Sauce')
puts "#{deletemyowncreationsadface.destroy} is destroyed"
