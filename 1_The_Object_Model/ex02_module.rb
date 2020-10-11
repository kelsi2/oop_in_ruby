# What is a module? Purpose? How to use with classes? 
# group reusable code in one place
# use include method invocation and method name

module Study
end

class MyClass
  include Study
end

my_obj = MyClass.new