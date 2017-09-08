class Car
  attr_accessor :year, :make, :model, :speed, :ignition

  def self.my_class_method
    p self
  end

  def self.gas_mileage(miles, gallons)
    puts "Gas mileage is #{miles / gallons}"
  end

  def initialize(year, make, model)
    puts "===> Car is created!"
    @year = year
    @make = make
    @model = model
    @speed = 0
    @ignition = "on"
  end

  def print_info
    puts "You have a #{year} #{make} #{model}. Current speed is #{speed} MPH with engine #{ignition}"
  end

  def speed_up(speed)
    self.speed += speed
  end 

  def brake(speed)
    self.speed -= speed
  end

  def shut_off
    self.ignition = 'off'
  end

  def what_is_self
    self
  end

end

Car.my_class_method
celica = Car.new(1990, 'Toyota', 'Celica')
celica.print_info
celica.speed_up(5)
celica.print_info
celica.speed_up(5)
celica.print_info
celica.brake(10)
celica.print_info
celica.shut_off
puts "Speed is #{celica.speed}"
Car.gas_mileage(100, 25)
p celica.what_is_self
