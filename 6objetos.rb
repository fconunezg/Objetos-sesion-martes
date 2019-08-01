class Product
  attr_accessor :name
  def initialize(name, *tallas)
    @name = name
    @sizes = tallas.map(&:to_i)
  end

  def promedio
    @sizes.sum / @sizes.count.to_f
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |product|
  puts "El promedio para #{product.name} es #{product.promedio}"
end
