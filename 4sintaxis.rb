class Dog
    def initialize(hash)
    @nombre = hash[:nombre]
  end

  def ladrar
    puts "#{@nombre} esta ladrando"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

perro = Dog.new(propiedades)
perro.ladrar
