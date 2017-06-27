require 'csv'
@first_number = 0
@second_number = 0
@winner = []

class Taya
  attr_accessor :name, :first_number, :second_number, :bet

  def initialize(hash)
    @name = hash[:name]
    @first_number = hash[:first_number]
    @second_number = hash[:second_number]
    @bet = hash[:bet]
  end

  def self.from_csv_row(row)
    self.new({
      name: row['name'],
      first_number: row['first_number'],
      second_number: row['second_number'],
      bet: row['bet']
      })
    end

  HEADERS = ['name', 'first_number', 'second_number', 'bet']

  def to_csv_row
    CSV::Row.new(HEADERS, [name, first_number, second_number, bet])
  end
end

def showContent
  CSV.foreach('bettors.csv', headers: true) do |row|
    bettors = Taya.from_csv_row(row)
    if (bettors.first_number.to_i == @first_number.to_i || bettors.first_number.to_i == @second_number.to_i) && (bettors.second_number.to_i == @first_number.to_i || bettors.second_number.to_i == @second_number.to_i)
      @winner.push({"name"=>bettors.name, "bet"=>bettors.bet})
    end
    #puts "#{bettors.name} #{bettors.first_number}"
  end
    if @winner.length != 0
    @winner.each do |win|
      puts "Win #{win["name"]} #{win["bet"]}"
    end
  else
    puts "No winners"
  end
end

def enterBet
  puts "Enter Name"
  name = gets.chomp
  puts "Enter First Number"
  first_number = gets.chomp
  puts "Enter Second Number"
  second_number = gets.chomp
  puts "Enter Amount of Bet"
  bet = gets.chomp
  taya = Taya.new({
    name: name,
    first_number: first_number,
    second_number: second_number,
    bet: bet
    })
    CSV.open('bettors.csv', 'a+') do |csv|
      csv << taya.to_csv_row
    end
    puts "Bet Entered #{taya.name} #{taya.first_number} #{taya.second_number} #{taya.bet}"
end

def showMenu
  puts "Automated Jueteng"
  puts "Choose what do you want to do"
  puts "1. Draw Ball"
  puts "2. Enter a Bet"
  puts "3. Show List of Bets"
  puts "4. Erase Bets"
  puts "5. Exit"
  puts "=" * 30
  print ">>"
  mchoice = gets.chomp.to_i
  if mchoice == 1
    @first_number = (rand*35).to_i
    puts "The first number is #{@first_number}"
    @second_number = (rand*35).to_i
    puts "The second number is #{@second_number}"
    showContent
  elsif mchoice == 2
    enterBet
    puts "=" * 30
    puts "Continue to Main Menu?"
    print ">>"
    mmchoice = gets.chomp.upcase
    if mmchoice == "Y"
      system "cls"
      showMenu
    elsif
      exit
    end
  elsif mchoice == 3
    opened_file = File.open('bettors.csv')
    puts "=" * 30
    print opened_file.read
    puts "=" * 30
    showMenu
  elsif mchoice == 4
    File.delete("bettors.csv")
    File.new('bettors' + '.csv', 'w+')
    showMenu
  elsif mchoice == 5
    exit
  end
end

def banner
  puts "'##:::::'##:'##::::'##::::'###::::'########:::::::'###::::'########::'########:
 ##:'##: ##: ##:::: ##:::'## ##:::... ##..:::::::'## ##::: ##.... ##: ##.....::
 ##: ##: ##: ##:::: ##::'##:. ##::::: ##::::::::'##:. ##:: ##:::: ##: ##:::::::
 ##: ##: ##: #########:'##:::. ##:::: ##:::::::'##:::. ##: ########:: ######:::
 ##: ##: ##: ##.... ##: #########:::: ##::::::: #########: ##.. ##::: ##...::::
 ##: ##: ##: ##:::: ##: ##.... ##:::: ##::::::: ##.... ##: ##::. ##:: ##:::::::
. ###. ###:: ##:::: ##: ##:::: ##:::: ##::::::: ##:::: ##: ##:::. ##: ########:
:...::...:::..:::::..::..:::::..:::::..::::::::..:::::..::..:::::..::........::
'##:::'##::'#######::'##::::'##:
. ##:'##::'##.... ##: ##:::: ##:
:. ####::: ##:::: ##: ##:::: ##:
::. ##:::: ##:::: ##: ##:::: ##:
::: ##:::: ##:::: ##: ##:::: ##:
::: ##:::: ##:::: ##: ##:::: ##:
::: ##::::. #######::. #######::
:::..::::::.......::::.......:::
::::::'##:'##::::'##:'########:'########:'########:'##::: ##::'######:::
:::::: ##: ##:::: ##: ##.....::... ##..:: ##.....:: ###:: ##:'##... ##::
:::::: ##: ##:::: ##: ##:::::::::: ##:::: ##::::::: ####: ##: ##:::..:::
:::::: ##: ##:::: ##: ######:::::: ##:::: ######::: ## ## ##: ##::'####:
'##::: ##: ##:::: ##: ##...::::::: ##:::: ##...:::: ##. ####: ##::: ##::
 ##::: ##: ##:::: ##: ##:::::::::: ##:::: ##::::::: ##:. ###: ##::: ##::
. ######::. #######:: ########:::: ##:::: ########: ##::. ##:. ######:::
:......::::.......:::........:::::..:::::........::..::::..:::......::::
'########::'#######::'########::
 ##.....::'##.... ##: ##.... ##:
 ##::::::: ##:::: ##: ##:::: ##:
 ######::: ##:::: ##: ########::
 ##...:::: ##:::: ##: ##.. ##:::
 ##::::::: ##:::: ##: ##::. ##::
 ##:::::::. #######:: ##:::. ##:
..:::::::::.......:::..:::::..::"
  puts "=" * 30
  puts "Press Y to Continue"
  bchoice = gets.chomp.upcase
  if bchoice == "Y"
    system "cls"
    showMenu
  end
end

def execute
  banner
end

execute
