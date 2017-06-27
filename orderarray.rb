puts"Here is our menu with corresponding prices"
menuMenu = {
  Coke: 20,
  Coke_with_straw: 25,
  Coke_with_straw_and_bottle: 30,
  Coke_Air: 40
}

puts "Press the corresponding number to order"
puts "Coke = 0, Coke_with_straw = 1, Coke_with_straw_and_bottle = 2, Coke_Air = 3"
myOrder = gets.chomp
puts "You ordered #{menuMenu[myOrder]}"
