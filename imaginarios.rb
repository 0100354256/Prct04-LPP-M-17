class Complejo
  attr_reader :a, :b
  
  def initialize (a, b)
    @a = a  # Racional
    @b = b  # Imaginario
  end

  def to_s  # Devuelve una cadena con la representación del racional
    if(b>0)
      "#{@a} +#{@b}i"
    elsif(b<0)
      "#{@a} #{@b}i"
    else
      "#{@a}"
    end
  end

  def suma (other)  # Devuelve un nuevo complejo que suma al objeto que invoca el que le pasan como parámetro
    result = Complejo.new(@a + other.a, @b + other.b)
  end

  def resta (other)  # Devuelve un nuevo complejo que resta al objeto que invoca el que le pasan como parámetro
    result = Complejo.new(@a - other.a, @b - other.b)
  end

  def mult (other)  # Devuelve un nuevo complejo que resta al objeto que invoca el que le pasan como parámetro
    result = Complejo.new(((@a * other.a) - (@b * other.b)), ((@b * other.a) + (@a * other.b)))
  end

  def div (other)
    result = Complejo.new((((@a * other.a) + (@b * other.b)).to_f / ((other.a * other.a) + (other.b * other.b))), (((@b * other.a) - (@a * other.b)).to_f / ((other.a * other.a) + (other.b * other.b))))
  end

  def escalar (num)
    result = Complejo.new(@a * num, @b * num)
  end
end