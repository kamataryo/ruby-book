require 'minitest/autorun'
require_relative './fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_no_fizz_buzz
    assert_equal fizz_buzz(1), '1'
  end
  
  def test_fizz
    assert_equal fizz_buzz(3), 'Fizz'
  end
  
  def test_buzz
    assert_equal fizz_buzz(5), 'Buzz'
  end
  
  def test_fizz_buzz
    assert_equal fizz_buzz(15), 'Fizz Buzz'
  end
end
