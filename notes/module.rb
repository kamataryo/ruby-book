module  Greeter
  def hello
    'hello'
  end 
end

class User
  include Greeter
  extend Greeter
end

user = User.new

p user.hello
p User.hello
