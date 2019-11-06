class Triangle

  attr_reader :equilateral, :isosceles, :scalene, :side1, :side2, :side3

  def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
  end

class TriangleError < StandardError
end

  def kind
    if good_triangle == true && good_triangle2 == true
    else
      raise TriangleError
    end

    if side1 == side2 && side1 == side3 && side2 == side3
      :equilateral
    elsif side1 == side2 || side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end

  end

  def good_triangle
    side1.positive? && side2.positive? && side3.positive?
  end

  def good_triangle2
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
  end

end



# :equilateral

# :isosceles

# :scalene