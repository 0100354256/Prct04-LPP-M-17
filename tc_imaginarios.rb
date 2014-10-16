require "./imaginarios.rb"
require "test/unit"

class Test_Complejos < Test::Unit::TestCase

  def setup  # Variables para el Test
    @a = Complejo.new(1,2)
    @b = Complejo.new(3,4)
    @c = Complejo.new(5,6)
    @d = Complejo.new(7,8)
    @e = 5
  end

  def test_simple  # Comprobar funcionalidad
    assert_equal("4 +6i", @a.suma(@b).to_s)
    assert_equal("2 +2i", @b.resta(@a).to_s)
    assert_equal("-5 +10i", @a.mult(@b).to_s)
    assert_equal("2.2 -0.4i", @b.div(@a).to_s)

    # Test fallidos
    assert_not_equal("15 +6i", @c.suma(@d).to_s)
  end

end

def tear_down
  #nothing
end