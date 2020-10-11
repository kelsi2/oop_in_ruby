class GoodDog
  attr_accessor :name, :height, :weight # name, name=, height, height=, weight, weight= (getters and setters created for all)

  def initialize(n, h, w) # Can change several states at once
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n # self tells ruby we are using a method, not defining a local variable
    self.height = h
    self.weight = w
  end

  def info # self not required here, but good for consistency
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info # => Spartacus weighs 45 lbs and is 24 inches tall.

