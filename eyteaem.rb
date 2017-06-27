$choice
$userInput

$clients = [
	{piNumber: '0123', Name: "Shawn Spencer", Cash: 50000},
	{Name: "Burton Guster", Cash: 50000, piNumber: 1234},
	{Name: "John Dorian", Cash: 50000, piNumber: 2345},
	{Name: "Christopher Turk", Cash: 50000, piNumber: 3456}
]

def viewAccount
	puts "Please enter your PIN to continue"
	pin = gets.chomp.to_i
	$clients.each do |client_check|
	if pin == client_check[:piNumber].to_i
  		puts "Welcome #{client_check[:Name]}, you have #{client_check[:Cash]} in your account"
		viewMenu
	else
  		puts "Pin is invalid, please enter your PIN again"
  		viewAccount
  	end
	end
end

def viewMenu
	puts "Select the number of the transaction you want to make"
	puts "Press 1 to View Balance"
	puts "Press 2 to Withdraw Cash"
	puts "Press 3 to Exit"
	menuChoice = gets.chomp
	if menuChoice == 1
		showBalance
	elsif menuChoice == 2
		withdrawCash
	elsif menuChoice == 3
		exit
	else
		puts "Entered number is not included in the options"
	end				
end

def showBalance
  		puts "Your current balance is #{client_check[:Cash]}"
		viewMenu
	else
  		puts "Pin is invalid, please enter your PIN again"
  		viewAccount
  	end

def withdrawCash
	puts "Enter the amount of cash you want to withdraw"
	amountInput.to_i = gets.chomp
	puts "Are you sure you want to withdraw #{amountInput}?"
	puts "Press 'Y' to confirm and 'N' to transact again"
	yandn = gets.chomp

	if yandn == 'Y' or 'y'
		puts "You have withdrawn #{amountInput} and your current balance is: #{newBalance}"
		newBalance.to_i = $clients['Cash'] - amountInput
	elsif yandn == 'N' or 'n'
		withdrawCash
	else
		puts "Please Press the right key"
		yandn
	end
end

def decide
	puts "Would you like to make another transaction?"
	puts "Press Y to make another transaction or N to end transaction"
	reponse = gets.chomp
	if reponse == 'Y' or 'y'
		viewMenu
	elsif reponse == 'N' or 'n'
		exit
	else
		puts "Please enter Y or N only"
		decide
	end
end

def execute
	viewAccount
	viewMenu
	withdrawCash
	decide
end

execute