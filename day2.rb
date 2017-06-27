alphabet = [ 'a', 'b', 'c', 'd', 'e', 'f', 'g',
'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

number_of_letters = alphabet.length
puts "There are #{number_of_letters} letters in the alphabet"
#last index is length -1
last_letter = alphabet[number_of_letters - 1]
puts "Last Letter: #{last_letter}"

number = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

lowest_value = number.min
puts "Lowest Number #{lowest_value}"

highest_value = number.max
puts "Highest Number #{highest_value}"

addBoth = "#{lowest_value.to_i + highest_value.to_i}"
puts addBoth

puts number.sample

arrayOfMe = ['To CODE', 'Not to Code']
puts arrayOfMe.sample

arrayOfLunch = ['To Eat', 'Not to Eat']
puts "To eat or not to eat"
puts arrayOfLunch.sample

#someMenu = ['Bobs Burger', 'Bobs Booger', 'Not so diet coke']

profile = {
  first_name: 'John',
  last_name: 'Dong',
  grand_slam_wins: '1 Tea Eye',
  grand_slam_loses: 'Tea Eye 2016',
  world_number_one_weeks: '4 Majors',
}

puts "#{profile[:first_name]} #{profile[:last_name]}"
puts "#{profile[:grand_slam_wins]} wins, #{profile[:grand_slam_loses]} loses, #{profile[:world_number_one_weeks]} weeks number 1"

#puts"Here is our menu with corresponding prices"
#menuMenu = {
#  Coke: 20,
#  Coke_with_straw: 25,
#  Coke_with_straw_and_bottle: 30,
#  Coke_Air: 40
#}

#puts "Press the corresponding number to order"
#puts "Coke = 0, Coke_with_straw = 1, Coke_with_straw_and_bottle = 2, Coke_Air = 3"
#menuMenu = gets.chomp
#puts "You ordered #{order}"

shopping_list = [
  {Item: :Milk, Quantity: 1},
  {Item: :Carton_Milk, Quantity: 1},
  {Item: :Milk_Wink_Wink, Quantity: 1},
  {Item: :Spoilt_Milk, Quantity: 1}
]

shopping_list.push({Item: :Wutface, Quantity: 1})
shopping_list.each do |haha|
  puts "#{haha[:Item]} x #{haha[:Quantity]}"
end

profile = {
  first_name: 'John',
  last_name: 'Dong',
  grand_slam_wins: 1,
  grand_slam_loses: 322,
  world_number_one_weeks: 322,
}

profile[:prize_money_usd] = 101_322_322
profile.merge!({handed: :left, backhand: :one_handed})
profile[:grand_slam_wins] += 1
profile.delete(:height_cm)
puts profile

profile = {
  name: 'Weh Sing',
  lastname: 'Yuen'
}

puts "previous name was #{profile[:name]}"
profile[:name] = "SingSing"
puts "now its #{profile[:name]}"
profile.merge!({age: 25, money: 1})
puts "He is #{profile[:age]} years old"
puts "He has #{profile[:money]} dollars in his pocket"
puts "But he got lucky and saw a thousand dollars lying on the stree"
profile[:money] += 1000
puts "Because he is a dbag he kept it and now he has #{profile[:money]} in his pocket"

puts "Now is the time to change your name"
puts "What would your new name be?"
newName = gets.chomp
profile[:name] = newName
puts profile
puts "Your New Name is #{profile[:name]} #{profile[:lastname]}"

puts "View Profile"
profile.each do |info| #displays profile in a list kind of order
  puts "#{info}"
end
