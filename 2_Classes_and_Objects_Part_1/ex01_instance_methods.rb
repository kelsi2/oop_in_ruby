class MyCar
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelarate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end
end

lumina = MyCar.new(1997, "chevy lumina", "white")

lumina.speed_up(20)
lumina.current_speed # => "You are now going 20 mph."

lumina.speed_up(20)
lumina.current_speed # => "You are now going 40 mph."

lumina.brake(20)
lumina.current_speed # => "You are now going 20 mph."

lumina.brake(20)
lumina.current_speed # => "You are now going 0 mph."

lumina.shut_down # => "Let's park this bad boy!"
lumina.current_speed # => "You are now going 0 mph."