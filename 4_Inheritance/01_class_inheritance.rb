# Inheritance: class inherits behaviour from another class (superclass). Class that inherits is a subclass

class Animal
  def speak
    "Hello!"
  end
end

# < means class is inheriting from a super class. All methods in the super class are available to the subclass
class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak # This overrides the speak method in the super class
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new

puts sparky.speak # => "Sparky says arf!" <-- output is using the subclass speak, not the one defined in the super class. Object class is checked before the superclass
puts paws.speak # => "Hello!"