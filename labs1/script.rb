def greeting
  name = gets.to_s.chomp
  last_name = gets.to_s.chomp
  age = gets.to_i
  if age < 18
    puts "Привет, #{name} #{last_name}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
    "Привет, #{name} #{last_name}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  else
    puts "Привет, #{name} #{last_name}. Самое время заняться делом!"
    "Привет, #{name} #{last_name}. Самое время заняться делом!"
  end
end

def foobar
  first = gets.to_i
  second = gets.to_i
  if first == 20 || second == 20
    puts "#{second}"
    second
  else
    puts "#{second + first}"
    second + first
  end
end
greeting

