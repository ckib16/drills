class Animal
  attr_accessor :height, :weight

  def initialize(height:, weight:)
    @height = height
    @weight = weight
  end

  def super_speak
    "I'm speaking from super"
  end
end

module Barkable
  def bark
    "Bark"
  end
end

class Dog < Animal
  include Barkable

  attr_accessor :name

  def initialize(height:, weight:, name:)
    super(height: height, weight: weight)
    @name = name
  end

  def super_speak
    super + " but I'm in the Dog class"
  end

end

mammal = Animal.new(height: 6, weight: 165)
puts "Mammal's height is #{mammal.height}"

fido = Dog.new(height: 1, weight: 20, name: 'Fido')
puts "#{fido.name}'s weight is #{fido.weight}"
puts fido.bark
puts fido.super_speak