class Animal
  
  attr_accessor :age, :weight
  
  def initialize (age, weight)
    @age = age
    @weight = weight
  end

  def speak
    puts "I am alive!"
  end
end

module Barkable
  def bark
    puts "I can bark"
  end
end

class Dog < Animal
  
  include Barkable
  
  attr_accessor :color

  def initialize(age, weight, color)
    super(age, weight)
    @color = color
  end

  def speak
    super
  end

  def info
    puts "#{@age}, #{@weight}, #{@color}"
  end
end

fido = Dog.new(3,16,"brown")
fido.info
puts "#{fido.speak} ...and I'm a dog!"
fido.bark
puts fido.age
puts fido.color
