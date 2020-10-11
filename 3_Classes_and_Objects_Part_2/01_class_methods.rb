# class methods can be called directly on the class without instantiating any objects
# prepend with self.

class GoodDog
  def self.what_am_i #Class method definition
    "I'm a GoodDog class!"
  end
end

# Can call the method with class name without needing to instantiate an object
GoodDog.what_am_i # => "I'm a GoodDog class!"

# class methods are where we put functionality that doesn't pertain to individual objects
# objects contain state, so if a method doesn't need to deal with states we use a class method