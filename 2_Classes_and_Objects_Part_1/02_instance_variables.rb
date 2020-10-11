class GoodDog
  def initialize(name)
    @name = name
  end
end

# @ === instance variable, exists as long as object instance exists and is one of the way we tie data to objects
  # Does not die after instance method is run, can be referenced until object instance is destroyed

# Can pass arguments (name) to initialize method through new method
sparky = GoodDog.new("Sparky")

# instance variables track info about the state of an object, each new instance is created with a different version of state, in this case @name