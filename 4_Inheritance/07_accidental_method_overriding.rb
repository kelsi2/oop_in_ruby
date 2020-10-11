# every class subclsses from class Object

class Parent
  def say_hi
    p "Hi from Parent"
  end
end

Parent.superclass # => Object
# methods defined in Object class are available in all classes
# subclass can override a superclass's method so if you accidentally override a method defined in the Object class it can impact code in a big way

class Child < Parent
  def say_hi
    p "Hi from Child"
  end

  def send # Overriding Object send method
    p "send from Child..."
  end

  def instance_of? # Overriding Object instance_of method
    p "I am a fake instance"
  end
end

child = Child.new
child.say_hi # => "Hi from Child."

son = Child.new
son.send :say_hi # => "Hi from Child."
# normally send serves as a way to call a method by passing it a symbol or string representing the method you want to call

lad = Child.new
lad.send :say_hi # => ArgumentError: wrong number of arguments (1 for 0) from (pry):12:in `send'
# error because we are trying to pass an argument when our overridden send method doesn't take arguments

# instance_of method returns true if object is an instance of a given class and false otherwise
c = Child.new
c.instance_of? Child # => true
c.instance_of? Parent # => false

heir = Child.new
heir.instance_of? Child #ArgumentError: wrong number of arguments (1 for 0) from (pry):22:in `instance_of?'
# Same problem as above send method override

# One method it's good to overwrite is to_s so you can get a different string representation of an object