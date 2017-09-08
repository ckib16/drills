require 'pry'

class Animal

  attr_accessor :weight, :age

  def initialize(weight:, age:)
    @weight = weight
    @age = age
  end

  def info
    "My weight is #{weight} and age is #{age}"
  end

end

module Barkable
  "Bark!"
end

class Dog < Animal
  attr_accessor :fur_color

  def initialize(weight:, age:, fur_color:)
    super(weight: weight, age: age)
    @fur_color = fur_color
  end

  def info
    super + "and my fur is " + @fur_color
  end
end

mammal = Animal.new(weight: 150, age: 3)
puts mammal.info

fido = Dog.new(weight: 20, age: 5, fur_color: 'black')
puts fido.info