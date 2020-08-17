class Triangle
  attr_accessor :kind
  def initialize(side1, side2, side3)
    if side1 == side2 && side2 == side3
      @kind = :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      @kind = :isosceles
    elsif side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    else
      @kind = :scalene
    end
  end
  class TriangleError < StandardError
  end
end
