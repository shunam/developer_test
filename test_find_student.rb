require "minitest/autorun"
require "./find_student"

class TestFindStudent < Minitest::Test
  def test_show_invited_students
    find_student = FindStudent.new(1)
    assert_equal 5, find_student.calculate_students_distance.count

    find_student = FindStudent.new(2)
    assert_equal 23, find_student.calculate_students_distance.count

    find_student = FindStudent.new(3)
    assert_equal 39, find_student.calculate_students_distance.count
  end
end