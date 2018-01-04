regex = /\d{3}-\d{4}/
p regex =~ '123-1234'
p '123-1234' =~ regex


text = "私の誕生日は1977年7月17日です。"

regex = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/

result = regex.match(text)

p text.scan(regex)
p result[:year]
p text[regex, :day]
