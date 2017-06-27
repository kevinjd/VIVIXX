@choice=0
@myInput=0
def ctof(x)
return 9.0*x.to_f/5.0+32
end

def ftoc(x)
  return (x-32)*5.0/9.0
end

def cir(x)
  return 2*3.14159265358979*x
end

def ktolbs(x)
  return x*2.2
end

def kmtom(x)
    return x*1000
end

def prime(num)
  comp=false;
  for x in 2..num-1
    if num%x==0
      comp=true;
      break
    end
  end

  if comp==false
    puts "Prime"
  else
    puts "Composite"
  end
end

def taxifair(x)

  e=(x/400).floor
  add=0
if e>=1
  add+=2*e
end
  return 35+add
end

def blankSpace
  return ' '*79
end
def putAst
  return '*'*79
end
def toCenter(txt)
  return txt.center(79, ' ')
end

def menu
    system "cls"
    puts blankSpace, blankSpace, putAst
    puts toCenter("1. Celcius to Fahrenheit")
    puts toCenter("2. Fahrenheit to Celcius")
    puts toCenter("3. Kilometer to Meter")
    puts toCenter("4. Kilogram to Pounds")
    puts toCenter("5. Prime or Composite")
    puts toCenter("6. Taxi Fair")
    puts  putAst, blankSpace, blankSpace
    puts toCenter("Enter the number of your choice.")
    print '>>> '.prepend(' '*27)
    menu =  gets.chomp.to_i
    if menu ==1
      system "cls"
        puts "Enter temperature in celsius"
        getInput
        puts ctof(@myInput).round(2)
    elsif menu==2
      puts "Enter temperature in fahrenheit"
      getInput
      puts ftoc(@myInput).round(2)
elsif menu==3
  puts "Enter kilometer"
  getInput
  puts kmtom(@myInput)
elsif menu==4
  puts toCenter("Enter kilogram")
  getInput
  puts ktolbs(@myInput)
elsif menu==5
  puts toCenter("Enter a number")
  getInput
  puts prime(@myInput)
elsif menu==6
  puts toCenter("Enter kilometer")
  getInput
  puts "Your fair is #{taxifair(kmtom(@myInput.to_f))}"
    else
      puts "Invalid Input"
    end

end
def getInput
    print ">>> ".prepend(' '*27)
    @myInput=gets.chomp.to_f
end
def banner
  system "cls"
  banner ="""

              █▀▄▀█ ▄███▄      ▄▄▄▄▀  ▄  █ ████▄ ██▄      ▄▄▄▄▄
              █ █ █ █▀   ▀  ▀▀▀ █    █   █ █   █ █  █    █     ▀▄
              █ ▄ █ ██▄▄        █    ██▀▀█ █   █ █   █ ▄  ▀▀▀▀▄
              █   █ █▄   ▄▀    █     █   █ ▀████ █  █   ▀▄▄▄▄▀
                 █  ▀███▀     ▀         █        ███▀
                ▀                      ▀
  """
  puts blankSpace, blankSpace
  print banner
  puts blankSpace, blankSpace
  puts toCenter(">>> Press ENTER to continue <<<")
  gets.chomp
end

banner
system "cls"
# puts prime(3)
# puts ctof(23).round(2)
# puts ftoc(ctof(23).round(2)).round(2)
# puts cir(5).round(2)
# puts ktolbs(62)
menu
puts "Enter K:"
m=gets.chomp.to_f

puts "Your fair is #{taxifair(kmtom(m))}"
