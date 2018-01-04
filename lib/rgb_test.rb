require 'minitest/autorun'
require_relative './rgb'

class RGBTest < Minitest::Test
  
  def test_to_hex_black
    assert_equal to_hex(0, 0, 0), '#000000'
  end
  
  def test_to_hex_white
    assert_equal to_hex(255, 255, 255), '#ffffff'
  end
  
  def test_to_hex_dark_blue
    assert_equal to_hex(4, 60, 120), '#043c78'
  end
  
  def test_to_ints_black
    assert_equal to_ints('#000000'), [0, 0, 0]
  end
  
  def test_to_ints_white
    assert_equal to_ints('#ffffff'), [255, 255, 255]
  end
  
  def test_to_ints_dark_blue
    assert_equal to_ints('#043c78'), [4, 60, 120]
  end
end
