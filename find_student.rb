require './great_circle'
require 'csv'

class FindStudent
  @@gandaria_lat = -6.243376
  @@gandaria_long = 106.784425

  def initialize(distance)
    @distance = distance
  end

  def calculate_students_distance
    filtered_students = []
    CSV.foreach("./students.csv") do |row|
      temp_distance = GreatCircle.distance(@@gandaria_lat, @@gandaria_long, row[2].to_f, row[3].to_f)
      if temp_distance < @distance
        row << temp_distance
        row[0] = row[0].to_i
        filtered_students << row 
      end
    end
    return filtered_students
  end

  def show_invited_students
    filtered_students = calculate_students_distance.sort_by(&:first)
    filtered_students.each do |filtered_student|
      puts "ID: #{filtered_student[0]}, \tNAME: #{filtered_student[1]}, \tJARAK: #{filtered_student[4].round(2)}"
    end    
  end
end