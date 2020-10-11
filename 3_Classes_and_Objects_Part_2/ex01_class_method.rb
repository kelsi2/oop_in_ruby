class MyCar

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def self.gas_mileage(gallons, miles) # class method (self.)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

MyCar.gas_mileage(13, 351) # => "27 miles per gallon of gas"