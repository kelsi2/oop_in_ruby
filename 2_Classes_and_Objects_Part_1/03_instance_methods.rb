class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak # => Arf!

fido = GoodDog.new("Fido")
puts fido.speak # => Arf!
# All objects of same class have same behaviours, despide different state

# Update to speak method: from "Arf" to "#{name} says arf!"
# Can expose info about state using instance methods
puts sparky.speak # => "Sparky says arf!"
puts fido.speak # => "Fido says arf!"