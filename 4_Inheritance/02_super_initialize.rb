class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super #super was initialized with name and we don't call it here, so this causes problems
    @color = color
  end
end

bruno = GoodDog.new("brown") # => #<GoodDog:0x007fb40b1e6718 @color="brown", @name="brown">
# initialize in GoodDog class passes the color argument (brown) to Animal initialize method so name also shows as brown

class BadDog < Animal
  def initialize(age, name)
    super(name) # Better way to call this as it uses the way that super was initialized
    @age = age
  end
end

BadDog.new(2, "bear") # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">
