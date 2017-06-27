puts "Hi, Welcome to William's Restaurant"
puts "Please input the number of orders"
order = gets.chomp.to_i
puts "The number of orders is #{order}"

counter = 0
  while counter < order do
    puts "Please enter price of the order"
    price = gets.chomp.to_f
    counter += 1
    total = total.to_f + price
  end

puts "The total of your order is #{total}"

puts "Enter cash provided"
cash = gets.chomp.to_f

if total < cash
  puts "Insufficient Funds"
else
  puts "Your change is #{cash - total}"
end
