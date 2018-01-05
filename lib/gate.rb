class Ticket
  attr_reader :price
  attr_accessor :enter_at, :exit_at

  FEES = {
    {from: :umeda, to: :jyuso} => 150,
    {from: :umeda, to: :mikuni} => 190,
    {from: :jyuso, to: :umeda} => 150,
    {from: :jyuso, to: :mikuni} => 150, 
    {from: :mikuni, to: :umeda} => 190,
    {from: :mikuni, to: :jyuso} => 150,
  }
  
  def initialize price
    @price = price
  end
  
  def section
    {from: @enter_at, to: @exit_at}
  end
  
  def fee
    FEES[section]
  end
  
  def success?
    fee <= @price
  end
end

class Gate
  
  attr_reader :name
  
  def initialize name
    @name = name
  end
  
  def enter! ticket
    ticket.enter_at = @name
  end
  
  def exit! ticket
    ticket.exit_at = @name    
    ticket.success?
  end
end
