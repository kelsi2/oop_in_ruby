class Person
  attr_reader :name # to fix error change to attr_writer or attr_accessor
  
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob" # =>  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)

# error because using attr_reader which doesn't include a setter method (only getter)