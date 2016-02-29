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

  def test_sorted_by_id
    find_student = FindStudent.new(1)
    assert_equal 133, find_student.calculate_students_distance[0][0]
    assert_equal 238, find_student.calculate_students_distance[1][0]
    assert_equal 295, find_student.calculate_students_distance[2][0]
    assert_equal 690, find_student.calculate_students_distance[3][0]

    find_student = FindStudent.new(2)
    assert_equal 35, find_student.calculate_students_distance[0][0]
    assert_equal 81, find_student.calculate_students_distance[1][0]
    assert_equal 133, find_student.calculate_students_distance[2][0]
    assert_equal 198, find_student.calculate_students_distance[3][0]
  end
end