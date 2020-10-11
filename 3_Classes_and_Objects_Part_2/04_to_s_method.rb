# to_s instance method is used automatically by Ruby
# puts returns name of objects class and encoding of the object id (this is not displayed but done behind the scenes)
#  For arrays it writes on separate lines the result of calling to_s on each element of the array

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age = a * DOG_YEARS
  end

  def to_s # overrides default to_s method
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

puts sparky # => This dog's name is Sparky and is 28 in dog years.
 # default to_s output: => #<GoodDog:0x007fe542323320>

# p is similar to puts but doesn't call to_s, calls inspect instead
# very helpful for debugging, equivalent to writing puts sparky.inspect
p sparky # => #<GoodDog:0x007fe54229b358 @name="Sparky", @age=28>

# to_s is also automatically called in string interpolation