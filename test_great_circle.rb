require "minitest/autorun"
require "./great_circle"

class TestGreatCircle < Minitest::Test
  def test_calculate 
    result = GreatCircle.distance(-6.243376, 106.784425, -6.26426037, 106.8452459)
    assert_equal 7.11, result.round(2)

    result = GreatCircle.distance(-6.243376, 106.784425, -6.2839394, 106.68179611)
    assert_equal 12.21, result.round(2)
  end
end