class MyCar
  attr_accessor :color
  attr_reader :year # getter only, can also use attr_writer for setter only

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end
end

lumina = MyCar.new(1997, "chevy lumina", "white")

lumina.color = "black"
puts lumina.color # => black

puts lumina.year # => 1997