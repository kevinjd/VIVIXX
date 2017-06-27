require 'csv'

def carMenu
  system "cls"
  puts "=" * 40
  puts "What would you like to do?"
  puts "1. Select Body"
  puts "2. Select Wheels"
  puts "3. Select Handle Bars"
  puts "4. Select 'Preno'"
  puts "5. Show Cart[iton] Records"
  puts "6. Show Total"
  puts "7. Exit Program"
  puts "=" * 40
  print ">> "
  cmchoice = gets.chomp
  if cmchoice == "1"
    cartBody
  elsif cmchoice == "2"
    cartWheels
  elsif cmchoice == "3"
    cartHandle
  elsif cmchoice == "4"
    cartPreno
  elsif cmchoice == "5"
    cart_file = File.open('cart_owners.csv')
    print cart_file.read
  elsif cmchoice == "6"
    puts "Current Total of Purchase is #{$total}"
    puts "Want to continue with your purchase?"
    print ">> "
    pchoice = gets.chomp.upcase
    if pchoice == "Y"
      carMenu
    elsif pchoice == "N"
      checkOut
    end
  elsif cmchoice == "7"
    exit
  elsif cmchoice == "upgradesajeep"
    jeepBanner
  else
    puts "Choice not included in the Menu"
  end
end

def cartBody
  system "cls"
  puts "Welcome to Body Selection"
  puts "We have a massive selection of cart bodies"
  puts "1. Sports Cart - P250,000"
  puts "2. Hybrid/DePedal - P150,000"
  puts "3. Convertible - P100,000"
  puts "4. Luxury Cart - P50,000"
  puts "5. Wagon - P50,000"
  puts "What Body type would you like to purchase?"
  print ">> "
  cbchoice = gets.chomp.to_i
  if cbchoice == 1
    puts "You have purchased a Sports Cart with a value of P250,000"
    $total += 250000
  elsif cbchoice == 2
    puts "You have purchased a Hybrid/DePedal with a value of P150,000"
    $total += 150000
  elsif cbchoice == 3
    puts "You have purchased a Convertible with a value of P100,000"
    $total += 100000
  elsif cbchoice == 4
    puts "You have purchased a Luxury Cart with a value of P50,000"
    $total += 50000
  elsif cbchoice == 5
    puts "You have purchased a Wagon with a value of P50,000"
    $total += 50000
  else
    puts "Choice Not Available"
  end
  puts "Type Y to return to Main Menu"
  typey = gets.chomp.upcase
  if typey == "Y"
    carMenu
  elsif
    puts "Not a valid option"
  end
end

def cartWheels
  system "cls"
  puts "Welcome to Wheel Selection"
  puts "Select your Wheel"
  puts "1. Chrome Wheels - P50,000"
  puts "2. Aluminum Wheels - P30,000"
  puts "3. Mag Wheels - P20,000"
  puts "4. Allow Wheels - P10,000"
  puts "What Wheel type would you like to purchase?"
  print ">> "
  cwchoice = gets.chomp.to_i
  cbchoice = gets.chomp.to_i
  if cbchoice == 1
    puts "You have purchased a Chrome Wheels with a value of P50,000"
    $total += 50000
  elsif cbchoice == 2
    puts "You have purchased a Aluminum Wheels with a value of P30,000"
    $total += 30000
  elsif cbchoice == 3
    puts "You have purchased a Mag Wheels with a value of P20,000"
    $total += 20000
  elsif cbchoice == 4
    puts "You have purchased a Alloy Wheels with a value of P10,000"
    $total += 10000
  else
    puts "Choice Not Available"
  end
  puts "Type Y to return to Main Menu"
  typey = gets.chomp.upcase
  if typey == "Y"
    carMenu
  elsif
    puts "Not a valid option"
  end
end

def handleBars
  system "cls"
  puts "Welcome to Handle Bar Selection"
  puts "Select you Handle Bar"
  puts "1. High Drag - P25,000"
  puts "2. Low Drag - P20,000"
  puts "3. Zero Drag - P15,000"
  puts "4. Tracker - P10,000"
  puts "What Handle Bar type would you like to purchase?"
  print ">> "
  chbchoice = gets.chomp
  puts "Type Y to return to Main Menu"
  typey = gets.chomp.upcase
  if typey == "Y"
    carMenu
  elsif
    puts "Not a valid option"
  end
end

def cartPreno
  system "cls"
  puts "Welcome to Cart Break Selection"
  puts "Select your Cart Break"
  puts "1. Stone - 20000"
  puts "2. Block of Wood - P15,000"
  puts "3. Tire Rubber - P10,000"
  puts "What Cart Break type would you like to purchase?"
  print ">> "
  cbchoice = gets.chomp
  puts "Type Y to return to Main Menu"
  typey = gets.chomp.upcase
  if typey == "Y"
    carMenu
  elsif
    puts "Not a valid option"
  end
end

def banner
  puts "
        ██████╗ ██╗███╗   ███╗██████╗     ███╗   ███╗██╗   ██╗
        ██╔══██╗██║████╗ ████║██╔══██╗    ████╗ ████║╚██╗ ██╔╝
        ██████╔╝██║██╔████╔██║██████╔╝    ██╔████╔██║ ╚████╔╝
        ██╔═══╝ ██║██║╚██╔╝██║██╔═══╝     ██║╚██╔╝██║  ╚██╔╝
        ██║     ██║██║ ╚═╝ ██║██║         ██║ ╚═╝ ██║   ██║
        ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝         ╚═╝     ╚═╝   ╚═╝"
  puts "
        ██████╗ █████╗  ██████╗     ███╗██╗████████╗ ██████╗ ███╗   ██╗███╗
        ██╔════╝██╔══██╗██╔══██╗    ██╔╝██║╚══██╔══╝██╔═══██╗████╗  ██║╚██║
        ██║     ███████║██████╔╝    ██║ ██║   ██║   ██║   ██║██╔██╗ ██║ ██║
        ██║     ██╔══██║██╔══██╗    ██║ ██║   ██║   ██║   ██║██║╚██╗██║ ██║
        ╚██████╗██║  ██║██║  ██║    ███╗██║   ██║   ╚██████╔╝██║ ╚████║███║
         ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚══╝╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═══╝╚══╝"

  puts "=" * 100
  puts "Type Y to proceed to Main Menu"
  print ">> "
  typey = gets.chomp.upcase
  if typey == "Y"
    carMenu
  elsif
    puts "Not a valid option"
  end
end

banner
