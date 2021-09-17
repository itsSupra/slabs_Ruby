def greeting
  name = gets.to_s
  lname = gets.to_s
  age = gets.to_i
  if age < 18
    puts "Привет, #{name},#{lname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  else
    puts "Привет, #{name},#{lname}. Самое время заняться делом!"
  end
end

def foobar
  first = gets.to_i
  second = gets.to_i
  if first == 20 || second == 20
    puts "#{second}"
  else
    puts "#{second + first}"
  end

end


foobar
