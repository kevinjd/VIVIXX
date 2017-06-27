class Cat
  attr_reader :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end
end

cats = [
  Cat.new('Purry', :black),
  Cat.new('Scratchy', :white),
  Cat.new('Feral', :fawn),
  Cat.new('Tiny', :fawn),
  Cat.new('Leo', :white)
]

#Pick only :white cats
white_cats = cats.select do |cat|
  cat.color == :white
end

#alternative Code
white_cats = cats.select { |cat| cat.color == :white}
#=> [Cat('Scratchy', :white), Cat('Leo', :white)]

puts white_cats[0].name

cats = [ Cat.new('Purry', :black), Cat.new('Scratchy', :white), Cat.new('Feral', :fawn),
Cat.new('Tiny', :fawn), Cat.new('Leo', :white)]

#get corresponding color for each cats
all_cat_colors = cats.map { |cat| cat.color}
#=> [:black, :white, :fawn, :fawn, :white]

#filter out multiplies by uniquing the colors
unique_cat_colors = all_cat_colors.uniq
#=>[:black, :fawn, :white]

#or can be written in one line
unique_cat_colors = cats.map { |cat| cat.color}.uniq
#=>[:black, :fawn, :white]
puts unique_cat_colors

#getting cat names
cat_names = cats.map{ |cat| cat.name}
#converting them to upcase
uppercased_cat_names = cat_names.map { |name| name.upcase}
#or chain
uppercased_cat_names = cat_names.map { |cat| cat.name.upcase}
