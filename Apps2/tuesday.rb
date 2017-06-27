#classess
class Customer
  def initialize(details)
    @details = details
  end

  def print_customer_details
    puts "Customer Details:"
    puts "Name: #{@details['name']}"
    puts "Starsign: #{@details['starsign']}"
    puts "Age: #{@details['age']}"
    puts "=" * 15
  end
end

pedro = Customer.new({"name" => "Pedro", "starsign" => "Taurus", "age" => 21})
pedro.print_customer_details

#getters
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  #adding getter method
  def name
    @name
  end
  def age
    @age
  end
  #adding setter method
  def name=(name)
    @name = name
  end
  def age=(age)
    @age
  end

  john = Person.new("John", 42)
  age = john.age #getting john's age

  puts "John's age is #{age}"
end

class Rectangle
  attr_reader :length, :breadth #shortcut instead of setting getters
  attr_writer :length, :breadth #shortcut instead of setting setters
  #attr_accessor :length, :breadth #shortcut instead of setting getters and setters
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
end

#Create a rectangle object
rect = Rectangle.new(10, 20)
#creating instance
rect = Rectangle.new(10, 20)
rect.length = 30 #Calls: def length=(length)
rect.breadth = 15 #Calls: def breadth=(breadth)
x = rect.length #Calls: def length
y = rect.breadth #Calls: def breadth
