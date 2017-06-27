puts "What would you like to order? type 'n' if you don't like to order anymore."
if chosen != "n"
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
