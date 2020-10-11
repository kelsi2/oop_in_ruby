# create modules that are seperate from super classes (e.g. swimming since not all animals can swim but we don't want to redefine it for all animals that can swim). Modules can be mixed in to classes that require those behaviours

module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable # mixing in Swimmable module
end

sparky = Dog.new
neemo = Fish.new
paws = Cat.new

sparky.swim # => I'm swimming!
neemo.swim # => I'm swimming!
paws.swim # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308> [cats don't have access to the swimmable module]

# common method to use "able" suffix for modules (e.g. Swimmable, Walkable, etc.)

# Inheritance vs. Modules:
  # Class inheritance: one type inherits behaviour of another type
  # Interface inheritance: uses mixin modules, class inherits the interface fo the mixin module
  # Deciding which to use:
    # Can only subclass from one class (class inheritance), can mix as many modules as needed
    # is-a relationship === class inheritance, has-a === interface inheritance
    # Cannot instantiate modules (no object can be created from a module), modules only for namespacing and grouping common methods