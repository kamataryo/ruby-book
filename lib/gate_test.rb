require 'minitest/autorun'
require_relative './gate'

class GateTest < Minitest::Test

  def setup
    @umeda = Gate.new(:umeda)
    @jyuso = Gate.new(:jyuso)
    @mikuni = Gate.new(:mikuni)
  end

  def test_scenario1
    ticket = Ticket.new(150)
    @umeda.enter!(ticket)
    
    refute @mikuni.exit!(ticket)
  end
  
  def test_scenario2
    ticket = Ticket.new(190)
    @umeda.enter!(ticket)
    
    assert @mikuni.exit!(ticket)
  end
end
