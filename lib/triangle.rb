class Triangle
  attr_reader :side1, :side2, :side3
#  attr_accessor :equilateral, :isosceles, :scalene

#  def initialize(attributes)
#    attributes.each {|key, value| self.send(("#{key}="), value)}
#  end
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 + @side2 + @side3 == 0
      raise TriangleError
    elsif @side1 < 0 || @side2 < 0 || @side3 < 0
      raise TriangleError
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      :scalene
    end
  end

  class TriangleError < StandardError
    def no_size
      "Triangles must have sides greater than 0"
    end
    def inequality
      "Triangles must conform to tringle equality"
  end
end
