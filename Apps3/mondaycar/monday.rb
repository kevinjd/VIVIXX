counter = 0

loop do
  counter += 1
  puts "Counter is #{counter}"
  break if counter == 1
end

loop do
  puts "Type STOP to break the loop"
  input = gets.chomp
  break if input == "STOP"

  puts "Another round then!"
end

def Menu
  puts "\n=== Menu Options ==="
  puts "1. Exit Program"
  puts "2. Print Japanese Haiku"
end

loop do
  menu
  command = gets.chomp

  case command
  when "1"
    puts "\nGood Bye\n"
    break
end
