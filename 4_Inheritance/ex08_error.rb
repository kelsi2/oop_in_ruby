bob = Person.new
bob.hi
# => NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
# from (irb):8
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# Fix this error by moving hi method above the private method in the class because it is unavailable to the object (e.g. private)