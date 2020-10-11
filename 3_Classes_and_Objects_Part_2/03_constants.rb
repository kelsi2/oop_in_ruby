# constant === same as JS (variables that don't change)
# usually defined with all capital letters (although only first letter is required)

class GoodDog
  DOG_YEARS = 7 # constant variable. WARNING: In Ruby these can be reassigned (will throw a warning)

  attr_accessor :name, :age

  def initialize(n, a) # using setter method to initialize @name and @age
    self.name = n
    self.age = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)

# use age getter method
puts sparky.age # => 28