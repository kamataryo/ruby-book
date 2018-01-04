require 'minitest/autorun'
require_relative 'convert_length'

class ConvertLengthTest < Minitest::Test

  def test_m_to_in
    assert_equal 39.37, convert_length(1, from: :m, to: :in)
  end
  
  def test_in_to_m
    assert_equal 0.38, convert_length(15, from: :in, to: :m)
  end
  
  def test_ft_to_m
    assert_equal 10670.73, convert_length(35000, from: :ft, to: :m)
  end
end
