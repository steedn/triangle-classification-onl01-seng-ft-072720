class Triangle
  attr_accessor :kind
  def initialize(side1, side2, side3)
    if side1 == side2 && side2 == side3
      @kind = :equilateral
    end
  end
end
