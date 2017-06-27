class Driver
  attr_accessor :name, :cars, :address, :contact

  def initialize(details)
    @details = details
  end

  def printDriverDetails
    puts "Driver Details:"
    puts "Name: #{@details['name']}"
    puts "Cars Owned: #{@details['cars']}"
    puts "Address: #{@details['address']}"
    puts "Contact: #{@details['contact']}"
    puts "=" * 15
  end
end

class Cars
  attr_accessor :name, :cars, :address, :contact

  def initialize(details)
    @details = details
  end

  def printCarDetails
    puts "Car Details:"
    puts "Make: #{@details['make']}"
    puts "Age: #{@details['age']}"
    puts "Top Speed: #{@details['topSpeed']}"
    puts "Gas Tank Size: #{@details['gasTankSize']}"
    puts "=" * 15
  end
end

driver = Driver.new({"name" => "John Dong", "cars" => "1",
"address" => "Bundok Tralala", "contact" => 4445555})
driver2 = Driver.new({"name" => "SingSing", "cars" => "2",
"address" => "Cloud9", "contact" => 4445554})

car = Cars.new({"make" => "Lamborjeepney Diablo", "age" => "5 Years Old",
"topSpeed" => "200 mph", "gasTankSize" => "10 Litters"})
car2 = Cars.new({"make" => "Mitsubishi Eclipse", "age" => "5 Years Old",
"topSpeed" => "200 mph", "gasTankSize" => "10 Litters"})
car3 = Cars.new({"make" => "Toyota Celica", "age" => "5 Years Old",
"topSpeed" => "200 mph", "gasTankSize" => "10 Litters"})

driver.printDriverDetails
driver2.printDriverDetails

car.printCarDetails
car2.printCarDetails
car3.printCarDetails
