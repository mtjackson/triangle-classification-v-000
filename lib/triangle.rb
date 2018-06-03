class Triangle
  attr_reader :side1, :side2, :side3
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side1:, side2:, side3:)
  end

  class TriangleError < StandardError
  end
end
