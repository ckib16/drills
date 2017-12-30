class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  attr_accessor :fur_color
  
  def initialize(name: 'Joe', fur_color: 'black')
    super(name)
    @fur_color = fur_color
  end

  def info
    puts "I am #{@name} with #{@fur_color} fur"
  end
end

fido = Dog.new(name:'fido', fur_color:'purple')
fido.info