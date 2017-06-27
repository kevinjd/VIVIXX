#=======READ FILE==========
#ask for file name
puts "Type in the file name:"
print ">>"
filename = gets.chomp

#open file and save it to opened_file variable
opened_file = File.open(filename)

#Print to the terminal screen
puts "Opened file name #{filename}"
puts "=" * 15
print opened_file.read

#========WRITE FILE==============
opened_file = File.open(filename, 'a+')

#Ask for something to enter
puts "Enter something to put in a file"
something = gets.chomp

#WRITE that something to that file
opened_file.write(something)
opened_file.write("\n")

#=========REWIND?================
#Rewind pointer at beinning of file
opened_file.rewind
puts "=" * 15

#Read entire file from beginning to end
print opened_file.read

#We are done with the file
opened_file.close

#==========CREATING A FILE===============
puts "Give your file a name (without .txt extension!)"
filename = gets.chomp

#Creates new file and adds the .txt file type extension
opened_file = File.new(filename + '.rb', 'w+')

puts "Write in a sentence to save your file '#{filename}'"
sentence = gets

#Write sentence string to the file
opened_file.write(sentence)

#Rewind pointer at the beginning of file
opened_file.rewind

#Read entire file from beginning to end
puts "=" * 15
print opened_file.read

#We are done with the file
opened_file.close
