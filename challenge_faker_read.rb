require_relative 'ar.rb'


catfind = Category.where('id >= 28')
querfind = Product.where('category_id >= 28')
puts "#{catfind.pluck('id', 'name')} #{querfind.pluck('category_id','name')}"
