require 'csv'

CSV.foreach('customers.csv', headers: true) do |row|
  puts "person #{row['uuid']} #{row['first_name']} #{row['last_name']} #{row['age']}"
end

#Secure Random
require 'csv'
require 'SecureRandom'

#skip past the headers by adding the headers to true
CSV.open("customers.csv", 'a+') do |csv_file|
  #add a row to the csv file
  csv_file << [SecureRandom.uuid, 'Bob', 'Mcgee', 49]
end
#==============================
class Person
  attr_accessor :first_name, :last_name, :suburb, :age, :gender

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @suburb = hash[:suburb]
    @age = hash[:age]
    @gender = hash[:gender]
  end

  def self.from_csv_row(row)
    self.new({
      first_name: row['first_name'],
      last_name: row['last_name'],
      suburb: row['suburb'],
      age: row['age'].to_i,
      gender: row['gender']
      })
    end

    HEADERS = ['first_name', 'last_name', 'suburb', 'age', 'gender']
    #Convert to CSV::Row
    def to_csv_row
      CSV::Row.new(HEADERS, [first_name, last_name, suburb, age, gender])
    end
end

#Create new Person
person = Person.new({
  first_name: "John",
  last_name: "Dong",
  suburb: "Brisbane",
  age: 30,
  gender: :male
  })

  #Append person to the csv file
  CSV.open('people.csv', 'a+') do |csv|
    csv << person.to_csv_row
  end

  people = []

  #loop over each row in the csv
  CSV.foreach('people.csv', headers: true) do |row|
    #convert from CSV::Row to Person Instance
    person = Person.from_csv_row(row)
    #Add object to array
    people << person
    #display first and last name
    puts "#{person.first_name} #{person.last_name}"
  end
