# module: collection of behaviours that is useable in other classes via mixins
# module "mixed in" to a class using include method invocation

module Speak
  def speak(sound)
    puts sound
  end
end

# both classes have access to the speak instance method because of "mixing in" the module Speak (same as if we copied in the speak method into each class)
class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!") # => Arf!

bob = HumanBeing.new
bob.speak("Hello!") # => Hello!