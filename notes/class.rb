class User
  attr_accessor :first_name, :last_name, :age
  
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
  
  def full_name
    "#{@first_name} #{@last_name}"
  end
  
  class << self
    def create_users names
      names.map { |name| User.new(name, '', 0) }
    end

  end

end

user = User.new('Ryo', 'Kamata', 33)
p user.full_name

user.first_name = 'Hoge'

p user.full_name

names = ['aa', 'bb', 'cc']

users = User.create_users(names)

users.each do |user|
  p user.full_name
end


class Product
  DEFAULT_PRICE = 0
  attr_reader :name, :price
  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
  
  def sale
    "¥#{@price}"
  end
end
 
class DVD < Product

  attr_reader :time
  
  def initialize(name, price, time)
    super(name, price)
    @time = time
  end
  
  def play
    p "#{name} #{time}"
  end
end

dvd = DVD.new('aaa', 14000, 10)

p DVD.class
p DVD.superclass
p dvd.instance_of?(Product)
p dvd.instance_of?(DVD)
p dvd.is_a?(Product)

dvd.play
