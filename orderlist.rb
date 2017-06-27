puts "Good day patron!"
puts "Welcome to Williams Food Hub"

menu = [
  {item: "Plain Rice", price: 20},
  {item: "Fried Rice", price: 50},
  {item: "Rice and Shine", price: 100},
  {item: "Rice of the Machines", price: 1000}
]
puts menu
gets
puts "What would you like to order?"
chosen = gets.chomp
menu.each do |food|
if chosen==food[:item]
  puts food[:price]
  puts "How many #{chosen} would you like to order?"
	numOrder = gets.chomp.to_i
	total = numOrder.to_i * food[:price]
	puts "That would be $#{total} please"
end
end

