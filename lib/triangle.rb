class Triangle
  attr_reader :side1, :side2, :side3
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side1:, side2:, side3:)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 == @side2 && @side2 == @side3
      self.kind = @equilateral
    elsif

  class TriangleError < StandardError
  end
end
