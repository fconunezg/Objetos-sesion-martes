class Product
 attr_accessor :name, :tallas

 def initialize(name, *tallas)
   @name = name
   @tallas = tallas.map(&:to_i)
 end

endproducts_list = []
data = []

File.open('catalogo.txt', 'r') {|file| data = file.readlines}

data.each do |prod|
 ls = prod.split(', ')
 products_list << Prouct.new(*ls)
end

endnuevo_catalogo = []

File.open('nuevo_catalogo', 'w')

products_list.each do |product|
 product.tallas.pop
 File.write('nuevo_catalogo.txt', "#{product.name}, #{product.tallas.join(', ')}\n", mode: 'a')
end
end
