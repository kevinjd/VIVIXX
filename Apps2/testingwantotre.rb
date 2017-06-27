def createFile
  puts "Do you want to create your own file to use?"
  puts "Press Y to create and N to open an existing file"
  cchoice = gets.chomp.upcase
  if (cchoice == "Y")
    puts "Enter your desired filename"
    filename = gets.chomp
    opened_file = File.new(filename + '.rb', 'w+')
  else (cchoice == "N")
    openFile
  end
end

def openFile
  puts "Open a file you want to use"
  print ">>"
  filename = gets.chomp
  opened_file = File.open(filename)
#==========================Rewrite the code===========================
#Read and Write Code
  opened_file = File.open(filename, 'a+')
  puts "Hi welcome to add something until you don't want to anymore"
  puts "Enter a name"
  print ">>"
  name = gets.chomp
  opened_file.write(name)
  opened_file.write("\n")
  puts "Would you like to enter another name?"
  puts "Press 'Y' to continue or 'N' to exit"
  choice = gets.chomp.upcase
  if (choice == "Y")
    openFile
  else (choice == "N")
    exit
  end
end

def execute
  createFile
end

execute
