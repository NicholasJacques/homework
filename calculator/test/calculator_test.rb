require 'minitest/autorun'
require './lib/calculator.rb'
require 'minitest/pride'



class CalculatorTest < Minitest::Test
  def test_it_exists
    assert Calculator.new
  end

  def test_it_can_add
    calculator = Calculator.new
    assert_equal 4, calculator.can_add(2, 2)
  end

  def test_it_can_subtract
  calculator = Calculator.new
  assert_equal 5, calculator.can_subtract(10, 5)
  end

  def test_it_can_hold_numbers
    calculator = Calculator.new
    calculator.can_add(2, 3)
    calculator.can_add(3, 2)
    assert_equal [5, 5], calculator.products
  end

  def test_it_can_total_sums
    calculator = Calculator.new
    calculator.can_add(2, 3)
    calculator.can_add(3, 2)
    assert_equal 10, calculator.total
  end

  def test_clear_products
    calculator = Calculator.new
    calculator.can_add(2, 3)
    calculator.can_add(3, 2)
    assert_equal [], calculator.clear
  end
end


# card = Card.new("What is the capital of Alaska?", "Juneau")
# card.question
# => "What is the capital of Alaska?"
# card.answer
# => "Juneau"