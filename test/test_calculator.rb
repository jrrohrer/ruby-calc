require 'minitest/autorun'
require 'calculator'

class TestCalculator < Minitest::Test
  # declaring a calculator variable that can be used by every test
  def setup 
    @calc = Calculator.new
  end

  def test_addition
    assert_equal 4, @calc.add(2, 2)
  end

  def test_subtraction
    assert_equal 5, @calc.subtract(10, 5)
  end

  def test_reduce_sum
    assert_equal 20, @calc.reduce_sum([2, 4, 6, 8])
  end

  def test_reduce_diff
    assert_equal 4, @calc.reduce_diff(20, [10, 2, 2, 2])
  end
end