

class Calculator
  attr_reader :products

  def initialize
    @products = []
  end


  def can_add(num_1, num_2)
    @products << num_1 + num_2
    num_1 + num_2
  end

  def can_subtract(num_1, num_2)
    @products << num_1 - num_2
    num_1 - num_2
  end

  def total
    sum = 0
    @products.each { |i| sum += i}
    sum
  end

  def clear
    @products.clear
  end
end


