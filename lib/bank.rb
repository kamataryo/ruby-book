require './lib/deep_freezable'

class Bank
  extend DeepFreezable
  
  CURRENCIES = deep_freeze({
    'Japan' => 'yes',
    'US' => 'dollar',
    'India' => 'rupee'
  })
end
