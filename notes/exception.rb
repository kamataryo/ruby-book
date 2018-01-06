module Greeter
  def hello
    'hello'
  end
end

begin
  Greeter.new
rescue => e
  puts '例外が発生しました'
  puts "エラークラス #{e.class}"
  puts "エラーメッセージ #{e.message}"
end
