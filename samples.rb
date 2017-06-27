puts "waddup"

def hi(name)
  puts "hi, #{name}"
end

hi("JohnDong")

def TimesTwo(number)
  puts "#{number} x 2 = #{number*2}"
end

TimesTwo(100)
TimesTwo(1)
TimesTwo(50)
TimesTwo(300)

#end

def FortyOne(number)
  puts "#{number} x 100 = #{number*2}"
end

FortyOne(100)
FortyOne(10)

# end

$i = 0
$num = 50
begin
  puts("Inside the loop i = #$i")
  $i +=5
end while $i < $num

# end

10.times do |counter|
  puts counter
end

# end

for year in 2000..2020
  puts year
end

# end

for year in 2000..2020
  puts year if year % 2 == 0
end

# end

puts "What's your name"
name = gets.chomp
puts "Waddup #{name}"

puts "Input First Number"
num1 = gets.chomp
puts "Input Second Number"
num2 = gets.chomp
puts "The Sum is #{num1.to_i + num2.to_i}"

# end

#puts "Enter a Number"
#number = gets.chomp
#puts "#{number+number} plus itself equals #{number.to_1 + number.to_i}"

# end

puts "Hi, Welcome to William's Restaurant"
puts "Please input the number of orders"
order = gets.chomp
puts "The number of orders is #{order}"

counter = 0
  while counter > order do
    puts "Please enter price of the order"
    order = gets.chomp
    counter += 1
    total = total.to_i + order.to_i
  end

puts "The total of your order is #{total}"

puts "Enter cash provided"
cash = gets.chomp

puts "Your change is #{cash.to_i - total.to_i}"
