class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new # => "This object was initialized!"
# initialize method gets called every time a new object is created
# initialize method is a constructor because it is triggered whenever we create a new object (difference between definining a class method vs. module method)