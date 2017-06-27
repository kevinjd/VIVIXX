def convertion
  puts "Enter the temp in Celcius"
  tempc = gets.chomp.to_f
  tempf = (tempc * 9) / 5 + 32
  puts tempf
  puts "Converting back to Celcius"
  temf = (tempf - 32) * 5 / 9
  puts temf
  puts "Initial Fare is 35\n"
  puts "Enter the distance of destination in kilometers"
  dist = gets.chomp.to_f
  distConvert = dist * 1000
  fareAdd = (distConvert / 400) * 2
  puts "Your taxi fare is"
  totFare = fareAdd + 35
  puts totFare.to_i
  puts "Enter how much US Dollar you would like to convert to Philippine Peso"
  usD = gets.chomp.to_f
  usdTotal = usD * 49.45
  puts usdTotal
  puts "Enter how much Japanese Yen you would like to convert to Philippine Peso"
  jpY = gets.chomp.to_f
  jpyTotal = jpY * 0.45
  puts jpyTotal.to_f
end

def exe
  convertion
end

@patak = 35

def convertF(tempf)
  return (tempc * 9) / 5 + 32
end

puts "Enter temp in Celcius"
tempc = gets.chomp.to_f
puts "Temp convert from Celcius to Fahrenheit is: #{convertF(tempf)}"

#$selection [
#  {convert: 'Celcius to Fahrenheit', }
#]
#puts "Select what kind of convert would you like"
