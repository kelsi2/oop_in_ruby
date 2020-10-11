# use the ancestors method on a class to find out the method lookup chain

module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ""
# GoodDog
# Speak
# Object
# Kernel
# BasicObject

puts "---HumanBeing ancestors"
puts HumanBeing.ancestors
# HumanBeing
# Speak
# Object
# Kernel
# BasicObject

# Speak module placed between custom classes (GoodDog and HumanBeing) and Object class built into Ruby
# Since speak isn't defined in the class, it looks in the speak module, if not found this is followed in a linear fashion down the line until found or out of places to look