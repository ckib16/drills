class Vehicle
  @@vehicle_count = 0

  attr_accessor :year, :color, :model, :speed, :ignition
  
  def self.print_vehicle_count
    puts "Vehicle Count is #{@@vehicle_count}"
  end
  
  def initialize(year, color, model)
    @@vehicle_count += 1
    @year = year
    @color = color
    @model = model
    @speed = 0
    @ignition = 'on'
    puts "Vehicle created!"
  end

  def print_info
    puts "It's a #{color} #{year} #{model} at #{speed} MPH with ignition #{ignition}"
  end
  
  def print_age
    puts "Created at #{vehicle_age}"
  end

  def speed_up(velocity)
    self.speed += velocity 
  end

  def brake(velocity)
    self.speed -= velocity
  end

  def turn_off
    self.ignition = 'off'
  end

  private

  def vehicle_age
    Time.now
  end
end

module Haulable
  def haul
    puts "I'm hauling now"
  end
end

class MyCar < Vehicle
  
  NUMBER_OF_DOORS = 4
  
end

class MyTruck < Vehicle
  include Haulable
  NUMBER_OF_DOORS = 2

end


car = MyCar.new('1985', 'gold', 'Celica')
car.print_info
car.speed_up(10)
car.print_info
car.brake(5)
car.print_info
car.brake(5)
car.print_info
car.turn_off
car.print_info
truck = MyTruck.new('1990', 'silver', 'Ram')
truck.print_info
truck.print_age
truck.haul
Vehicle.print_vehicle_count
