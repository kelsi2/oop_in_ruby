# super lets us call methods earlier in the method lookup path
# when super is caled from within a method ruby will find a method with the same name and invoke it (if available)

class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class" # calls the speak method in Animal first, then adds to it
  end
end

sparky = GoodDog.new
sparky.speak # => "Hello! from GoodDog class"