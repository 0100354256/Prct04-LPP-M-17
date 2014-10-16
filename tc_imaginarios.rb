require "./imaginarios.rb"
require "test/unit"

class Test_Complejos < Test::Unit::TestCase

  def setup	# Variables para el Test
    @a = Complejo.new(1,2)
    @b = Complejo.new(3,4)
  end

  def test_simple	# Comprobar funcionalidad
     assert_equal("4 + 6i", @a.suma(@b).to_s)
  end

end

def tear_down
  #nothing
end