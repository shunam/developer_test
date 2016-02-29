require './great_circle'
require 'csv'

puts "Kirim invitation dalam jarak ? (km)"
distance = gets.chomp.to_i
gandaria_lat = -6.243376
gandaria_long = 106.784425

CSV.foreach("./students.csv") do |row|
  temp_distance = GreatCircle.distance(gandaria_lat, gandaria_long, row[2].to_f, row[3].to_f)
  if temp_distance < distance
    puts "JARAK: #{temp_distance} km, \tID: #{row[0]}, \tNAME: #{row[1]}"
  end
end