require './find_student'

puts "Kirim invitation dalam jarak ? (km)"
distance = gets.chomp.to_i
find_student = FindStudent.new(distance)
find_student.show_invited_students