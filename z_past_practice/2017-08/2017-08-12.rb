class Animal
  def speak
    puts "Hello!"
  end
end

module Swimmable
  def swim
    puts "I'm swimming!"
  end
end

module Mammal
  
  class Dog < Animal
    include Swimmable
  end
  
  class Cat < Animal
  end
end
  
fido = Mammal::Dog.new
fido.speak
paws = Mammal::Cat.new
paws.speak
fido.swim

puts Mammal::Cat.ancestors
puts Mammal::Dog.ancestors

class Student
  attr_accessor :name, :grade
end