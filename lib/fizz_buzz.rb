def fizz_buzz num
  msg = ''
  if num % 3 == 0 || num % 5 == 0
    msg += 'Fizz' if num % 3 == 0
    msg += ' ' if num % 15 == 0
    msg += 'Buzz' if num % 5 == 0
  else
    msg += num.to_s
  end
  msg
end
