class InvalidNameError < StandardError
end

class InvalidPinError < StandardError
end

def validate_name(name)
  name = name.strip #trim whitespace
  if name.empty?
    raise InvalidNameError
  end
end

def ask_for_name
  puts 'Please enter your name:'
  print '>'
  name = gets.chomp

  validate_name(name)
rescue InvalidNameError => e
  puts 'Waddup fooo, get yo ass and read the instruction'
  retry
end

def validate_pin(pin)
  pin = pin.strip
  if pin.empty?
    raise InvalidPinError
  end
end

def askForPin
  puts 'Please enter your PIN:'
  print '>'
  pin = gets.chomp

  validate_pin(pin)
rescue InvalidPinError => e
  puts 'PIN invalid'
  retry
end

password = askForPin
username = ask_for_name
