require "minitest/autorun"
require "./array_flatten"

class TestFindStudent < Minitest::Test
  def test_flatten_ruby
    arr1 = [1,2,3,4]
    assert_equal arr1.flatten, ArrayFlatten.flatten_ruby(arr1)

    arr2 = [1,2,[3],4]
    assert_equal arr2.flatten, ArrayFlatten.flatten_ruby(arr2)

    arr3 = [[1,2,[3]],4]
    assert_equal arr3.flatten, ArrayFlatten.flatten_ruby(arr3)

    arr4 = [[1,2,[3,5]],4]
    assert_equal arr4.flatten, ArrayFlatten.flatten_ruby(arr4)

    arr5 = [[1,2,[3,[5,6]]],4]
    assert_equal arr5.flatten, ArrayFlatten.flatten_ruby(arr5)
  end
end