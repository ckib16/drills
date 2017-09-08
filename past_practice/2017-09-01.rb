class Animal
  attr_accessor :age, :weight

  def initialize(age:, weight:)
    @age = age
    @weight = weight
  end

  def speak
    "Hi, my age is #{@age} and my weight is #{@weight}"
  end
end

module Barkable
  def bark
    "Bark"
  end
end

class Dog < Animal
  include Barkable

  attr_accessor :color

  def initialize(age:, weight:, color:)
    super(age: age, weight: weight)
    @color = color
  end

  def speak
    super + "and I just supered"
  end
end

tortise = Animal.new(age: 27, weight: 150)
puts tortise.speak
puts tortise.age

fido = Dog.new(age: 10, weight: 20, color: "blue")
puts fido.speak
puts fido.age
puts fido.bark