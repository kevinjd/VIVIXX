class Driver
  attr_accessor :name, :ocars, :address, :contact

  def initialize(details)
    @details = details
  end

  def printDriverDetails
    puts "Driver Details:"
    puts "Name: #{@details['name']}"
    puts "Cars Owned: #{@details['ocars']}"
    puts "Address: #{@details['address']}"
    puts "Contact: #{@details['contact']}"
    puts "=" * 15
  end
end

class Cars
  attr_accessor :make, :age, :topSpeed, :gasTankSize

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

john = Driver.new({"name" => "John Dong", "ocars" => "",
"address" => "Bundok Tralala", "contact" => 4445555})
sing = Driver.new({"name" => "SingSing", "ocars" => "",
"address" => "Cloud9", "contact" => 4445554})

lambo = Cars.new({"make" => "Lamborjeepney Diablo", "age" => "5 Years Old",
"topSpeed" => "200 mph", "gasTankSize" => "10 Litters"})
mitsu = Cars.new({"make" => "Mitsubishi Eclipse", "age" => "5 Years Old",
"topSpeed" => "200 mph", "gasTankSize" => "10 Litters"})
toyo = Cars.new({"make" => "Toyota Celica", "age" => "5 Years Old",
"topSpeed" => "200 mph", "gasTankSize" => "10 Litters"})



def showMenu
  puts "=" * 15
  puts "Welcome to Rent-a-Car-and-Never-Return-it-Back"
  puts "May I know your name?"
  cname = gets.chomp.to_s
  system "cls"
  puts "Hello #{cname}, how may I help you today?"
  puts "1. Rent-a-Car"
  puts "2. Search-a-Driver"
  puts "3. Search-a-Car"
  puts "4. Exit"
  puts "Enter the number of what you would like to do"
  choice = gets.chomp.to_i
  system "cls"
  if choice == 1
    puts "Which car would you like to rent?"
     puts lambo.printCarDetails
     puts mitsu.printCarDetails
     puts toyo.printCarDetails
  elsif choice == 2
    puts "What else would you like to know?"
    puts "Search Drivers by:"
    puts "1. Name"
    puts "2. Cars Owned"
    puts "3. Back to Menu"
    puts "Select the number of your choice"
    dchoice = gets.chomp.to_i
    system "cls"
    if dchoice == 1
      dname = driver.name
      dname2 = driver2.name
      puts "Our drivers names are"
      puts "1. #{dname}"
      puts "2. #{dname2}"
    elsif dchoice == 2
      cars = driver.cars
      cars2 = driver2.cars
      puts "#{name} has #{cars}"
      puts "#{name} has #{cars2}"
    elsif dchoice == 3
      showMenu
    end
  elsif choice == 3
    puts "What else would you like to know?"
    puts "Search Cars by:"
    puts "1. Make"
    puts "2. Age"
    puts "3. Back to Menu"
    puts "Select the number of your choice"
  end
end

showMenu
