def pass_me_options(options)
  first_name = options[:first_name]
  last_name = options[:last_name]
end

pass_me_options({first_name: 'Alice', last_name: 'Jones'})

#shortcut
pass_me_options first_name: 'Alice', last_name: 'Jones'

puts :test.to_s
puts :i_am_a_symbol.to_s
puts :i_am_a_symbol.to_s.gsub("_", " ")
number1 = :d30.to_s.gsub("d","").to_i
number2 = :num100.to_s.gsub("num","").to_i
puts number1+number2

hard_maths = "The square root of 500 is #{Math.sqrt(500)}"
puts hard_maths

names = 'Alice, John, Lucy'.split(', ')
#names.join('_')
#names.join('_').downcase
puts names

'  Some text  '.strip
#some "Some text"

input = gets
#"Entered text\n"

input = gets.chomp
#"Entered text"

'=' * 15
#===============

'Welcome'.center(30, '=')
#===========Welcome===========

'Welcome'.prepend(' ').concat(' ').center(30, '#')
# ########## Welcome ###########

#('@' * 50 "\n") + ('@' * 50 "\n")
