require 'minitest/autorun'
require_relative './convert_hash_syntax'

class ConvertHAshSyntaxTest < Minitest::Test

  def test_convert1
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age => 20,
        :gender => :female
      }
    TEXT
    
    new_syntax = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal new_syntax, convert_hash_syntax(old_syntax)
  end
  
  def test_convert2
    old_syntax = <<~TEXT
      {
        :name => 'Bob',
        :ocupation => :programmer,
        :gender => :male
      }
    TEXT
    
    new_syntax = <<~TEXT
      {
        name: 'Bob',
        ocupation: :programmer,
        gender: :male
      }
    TEXT
    assert_equal new_syntax, convert_hash_syntax(old_syntax)
  end

end
