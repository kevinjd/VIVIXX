puts "Give your file a name (without the extension!)"
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
