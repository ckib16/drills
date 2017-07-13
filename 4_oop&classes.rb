#    OOP & Classes
# Define Methods
# Call method and pass in an argument

# Classes, objects, @instance_variables, @@class_variables, self.class_methods
# start class

# setter/getter/variable
# initialize with argument
# end class

# create module

# add subclass thru inheritance & mix-in module

# add third class
# add class variable as a class "counter"
# add constant

# add variables/getter/setter

# initialize class
# instance variables
# class variable

# => 0 call class method
# create object of 3rd class
# => 2 call class method again


#
#   ANSWERS
#

# Methods
def display(argument)         # Method with Argument
  puts argument
  puts "This is a method result"
end

display("Hello")              # Call method and pass in an argument

# Classes, objects, @instance_variables, @@class_variables, self.class_methods
class ExampleClass                   # start class

  attr_accessor :instance_variable   # setter/getter/variable

  def initialize(argument)           # initialize with argument
    @instance_variable = argument
  end
end                                  # end class

module Mixable                       # create module
  puts "This is a amodule"
end

class Subclass < ExampleClass        # add subclass thru inheritance & mix-in module
  include Mixable
end

class GoodDog                        # add third class
  @@number_of_dogs = 0               # add class variable as a class "counter"
  DOG_YEARS = 7                      # add constant

  attr_accessor :name, :age          # add variables/getter/setter

  def initialize(n, a)               # initialize class
    self.name = n
    self.age = a * DOG_YEARS         # instance variables
    @@number_of_dogs += 1            # class variable
  end

  def self.total_number_of_dogs      # def class method
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0 call class method

dog1 = GoodDog.new                  # create object of 3rd class

puts GoodDog.total_number_of_dogs   # => 2 call class method again

