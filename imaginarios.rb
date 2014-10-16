class Complejo
  
  attr_reader :a, :b
  
  def initialize (a, b)
    
    @a = a	# Racional
    @b = b	# Imaginario
    
  end

  def to_s	# Devuelve una cadena con la representación del racional
    "#{@a} + #{@b}i"
  end

  def suma (other)	# Devuelve un nuevo complejo que suma al objeto que invoca el que le pasan como parámetro
    @a = @a + other.a
    @b = @b + other.b
    self.to_s 	# Resultado como cadena
  end

  def resta (other)	# Devuelve un nuevo complejo que resta al objeto que invoca el que le pasan como parámetro
    @a = @a - other.a
    @b = @b - other.b
    self.to_s 	# Resultado como cadena
  end

  def mult (other)	# Devuelve un nuevo complejo que resta al objeto que invoca el que le pasan como parámetro
    aux = @a
    @a = ((@a * other.a) - (@b * other.b))
    @b = ((@b * other.a) + (aux * other.b))
    self.to_s 	# Resultado como cadena
  end
end