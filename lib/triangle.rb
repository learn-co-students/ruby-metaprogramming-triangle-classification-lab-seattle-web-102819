class Triangle
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  class TriangleError < StandardError
  end

  def kind
    if triangle_valid == true && triangle_valid2 == true
    else
      raise TriangleError
    end

    if x == y && y == z && z == x
      :equilateral
    elsif x == y || y == z || z == x
      :isosceles
    else
      :scalene
    end
  end

  def triangle_valid
    x.positive? && y.positive? && z.positive?
  end

  def triangle_valid2
    x + y > z && x + z > y && y + z > x
  end
end