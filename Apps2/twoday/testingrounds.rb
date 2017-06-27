require 'csv'

CSV.foreach('bettors.csv', headers: true) do |row|
  puts "person #{row['uuid']} #{row['first_name']} #{row['last_name']} #{row['age']}"
end
