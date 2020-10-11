# uses of self: 
  # 1. calling setter methods from within the class (allows ruby to distinguish between initializing local variable or calling setter method)
  # 2. class method definitions

class GoodDog
  attr_accessor :name, :height, :weight

  def intialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  puts self # => GoodDog...inside a class but outside an instance method self refers to the class itself
  # method def prefixed with self is the same as defining method on the class
  # def self.a_method === def GoodDog.a_method
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
p sparky.what_is_self # => #<GoodDog:0x007f83ac062b38 @name="Sparky", @height="12 inches", @weight="10 lbs">
# inside the class, self references the calling object (e.g. sparky object)
# inside the change_info method, calling self.name= is the same as calling sparky.name= from outside the class

class MyAwesomeClass
  def self.this_is_a_class_method # when self prepended to method definition it is defining a class method
  end
end