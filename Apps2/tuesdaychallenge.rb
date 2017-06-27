class Customer
  attr_accessor :name, :email, :account, :address, :contact

  def initialize(details)
    @details = details
  end

  def getPin
    puts "Please Enter Your Pin Number"
    pin = gets.chomp.to_i
    if pin == 1234
      puts "Welcome"
      puts "=" * 15
      self.print_client_details
      puts "=" * 15
      self.showMenu
    else
      puts "PIN incorrect"
      self.getPin
    end
  end

  def print_client_details
    puts "Client Details:"
    puts "Name: #{@details['name']}"
    puts "Email: #{@details['email']}"
    puts "Account: #{@details['account']}"
    puts "Address: #{@details['address']}"
    puts "Contact: #{@details['contact']}"
    puts "=" * 15
  end

  def showMenu
    puts "Please enter the number of what you would like to do"
    puts "1. Show Balance"
    puts "2. Withdraw"
    puts "3. Exit"
    action = gets.chomp.to_i
    case action
    when 1
      self.showBalance
    when 2
      self.custWithdraw
    when 3
      exit
    else
      puts "Number chosen is not included in the option, please try again"
      self.showMenu
    end
  end

  def showBalance
    puts "Your account balance is P#{@details['account']}"
    puts "To make another transaction press 1, to end transaction press 2"
    choice = gets.chomp.to_i
    puts "=" * 15
    if choice == 1
      self.showMenu
    else
      exit
    end
  end

  def custWithdraw
    puts "How much would you like to withdraw?"
    amount = gets.chomp.to_i
    total.to_i = "#{@details['account']} - #{amount}"
    puts "You have withdrawn an amout of P#{amount}"
    puts "Your current balance is P#{total}"
  end

  def execute
    self.getPin
  end
end
cust = Customer.new({"name" => "John Dong", "email" => "therealjohndong@something.com",
"account" => 1000000, "address" => "Bundok Tralala", "contact" => 4445555})
cust.getPin
