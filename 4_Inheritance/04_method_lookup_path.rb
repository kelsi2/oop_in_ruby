# method lookup path: order in which classes are inspected when you call a method

module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

puts "---Animal method lookup---"
puts Animal.ancestors
# => Animal --> Walkable --> Object --> Kernel --> BasicObject

fido = Animal.new
fido.speak # => I'm an animal, and I speak!
# found speak method in Animal class and looked no further

fido.walk  # => I'm walking.
# Ruby looked for walk in Animal, then kept looking in Walkable module. Found it, executed, and stopped looking

fido.swim # => NoMethodError: undefined method `swim' for #<Animal:0x007f92832625b0>
# Ruby searched all classes and modules in the list and found nothing for swim so threw an error

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors
# => GoodDog --> Climbable --> Swimmable --> Animal --> Walkable --> Object --> Kernel --> BasicObject
# order of modules is important, last module is searched first
# module in superclass is in the lookup path, if other modules were mixed into other superclasses they would be part of the lookup path too