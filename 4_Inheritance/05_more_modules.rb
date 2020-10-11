# Namespacing: organizing similar classes under a module (use moduels to group related classes)

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  # use modules as a container for methods, module methods
  def self.some_out_of_place_method(num)
    num ** 2
  end

  # methods defined in a module means we can call them directly from the module
  value = Mammal.some_out_of_place_method(4)
end

# call classes in a module by appending class name to module with two colons(::)
buddy = Mammal::Dog.new
kitty = Mammal::Cat.new

buddy.speak("Arf!") # => "Arf!"
kitty.say_name("kitty") # => "kitty"

# methods in modules can be called from outside using colons but it is best to call them from inside
value = Mammal::some_out_of_place_method(4)