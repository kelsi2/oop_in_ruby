# Class variables are similar to instance variables

class GoodDog
  @@number_of_dogs = 0 # class variable (2 @ symbols)

  def initialize # each time a new object is initialized, number of dogs is incremented
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs # => 2