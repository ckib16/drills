class Dog

  attr_accessor :name

  def initialize(name: "Fido")
    @name = name
  end

  def speak
    @name
  end
end

fido = Dog.new
puts fido.speak
puts fido.name