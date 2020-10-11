class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super() # calls super method with no arguments, safest way to call it if there are no methods defined in the superclass. If parentheses not included Ruby will throw and ArgumentError exception since number of arguments is not correct
    @color = color
  end
end

bear = Bear.new("black") # => #<Bear:0x007fb40b1e6718 @color="black">