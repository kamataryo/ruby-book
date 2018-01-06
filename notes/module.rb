module  Greeter
  def hello
    'hello'
  end 
end

class User
  include Greeter
  extend Greeter
end

module NameSpace
  class Product
    def self.hello
      'namespaced class hello'
    end
  end
end


user = User.new

p user.hello
p User.hello
p NameSpace::Product.hello
