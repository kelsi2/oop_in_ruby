# Method Access Control: implemented through access modifiers (allow or restrict access to something)
  # used in Ruby to restrict access to the methods defined in a class
# three types of access modifiers:
  # public: method available to anyone who knows class name or object's name
    # available for program to use and comprise class's interfac (how other classes or objects interact with class and it's objects)
  # private: methods doing work in the class but don't need to be available to the rest of the program
    # anything after we use the private method call is private unless negated by protected
  # protected: inside the class these are accessible like public methods, outside the class they act like private methods

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def public_disclosure # this method can access private methods since it is within the class
    "#{self.name} in human years is #{human_years}" # Cannot use self.human_years because human_years is private
  end

  private # Anything after this is private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
sparky.human_years # => NoMethodError: private method `human_years' called for
  #<GoodDog:0x007f8f431441f8 @name="Sparky", @age=4>
  # This method has been made private so it needs to be accessed from other methods in the class

class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new
fido.a_public_method # => Will this work? Yes, I'm protected!
fido.a_protected_method   # => NoMethodError: protected method `a_protected_method' called for
    #<Animal:0x007fb174157110>