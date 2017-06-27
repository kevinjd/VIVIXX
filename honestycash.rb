#William runs a small restaurant here in Baguio. He has been looking for ways to cut costs and has realised that tlargest expense is Mihael, his cashier.
puts "Welcome to William's Restaurant"
puts "How many orders do you have?"
puts "Thank you. The number of orders is #{norders}"

counter = 0
  while counter < norders do
    puts "Please enter price of your order"
    order = gets.chomp.to_f
    counter += 1
    total = total.to_f + order
  end

puts "Thank you. Your bill is #{total}"
puts "Please input amount of payment"
  payment = gets.chomp

if payment.to_f < total.to_f
  puts "Insuficcient cash. Please try again"
  else
  puts "Your change is #{payment.to_f-total.to_f}"
end
