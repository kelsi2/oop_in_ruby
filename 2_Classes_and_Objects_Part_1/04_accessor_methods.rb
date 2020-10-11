class GoodDog
  attr_accessor :name #automatically creates getter and setter methods for name

  def initialize(name)
    @name = name
  end

  # def name # renamed from get_name
  #   @name
  # end

  # def name=(n) # renamed from set_name
  #   @name = n
  # end

  def speak
    "#{name} says arf!" # uses name getter method to access current state of instance method (not instance variable)
  end
end

sparky = GoodDog.new("Sparky")

fido = GoodDog.new("Fido")

puts sparky.name # => NoMethodError: undefined method `name' for #<GoodDog:0x007f91821239d0 @name="Sparky"
# Called method that doesn't exist or is unavailable to object
# Need to create method that will return name (added to class above)

puts sparky.name # => Sparky
# get_name === getter method

# Add set_name (setter method) above so we can change name
sparky.name = "Spartacus"
puts sparky.name # => Spartacus

# convention to name getter/setter methods using same name as instance variable (changed above)