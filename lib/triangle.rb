class Triangle
  attr_reader :side1, :side2, :side3
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(attributes)
    attributes.each do |key, value|
      self.send(("#{key}="),  value)
 # def initialize(side1:, side2:, side3:)
#    @side1 = side1
#    @side2 = side2
#    @side3 = side3
#  end

  def kind
    if @side1 == @side2 && @side2 == @side3
      self.kind = @equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      self.kind = @isosceles
    elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      self.kind = @scalene
    end
  end

  class TriangleError < StandardError
  end
end
