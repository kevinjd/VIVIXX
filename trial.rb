puts "Good day patron!"
puts "Welcome to Williams Food Hub"

menu = [
  {item: "Plain Rice", price: 20},
  {item: "Fried Rice", price: 50},
  {item: "Rice and Shine", price: 100},
  {item: "Rice of the Machines", price: 1000}
]
cost = []
total=0
t=0
pricet=0
puts menu
gets


puts "would you like to order? yes/no"
chosen = gets.chomp

	
		puts "What would you like to order? type 'n' if you don't like to order anymore."
		chosen = gets.chomp
		while chosen != 'no' do
		menu.each do |food|
			if chosen==food[:item]
				puts food[:price]
				puts "How many #{chosen} would you like to order?"
				numOrder = gets.chomp.to_i
				total = total + numOrder.to_i * food[:price]
				cost.push(total)
			end
			end
			end
		else
			cost.each do |add|
			pricet += cost
				
			
			t += total.to_i
			end
		


puts "That would be $#{pricet} please"	