def task1
  puts 'Enter word: '
  word = gets.to_s.gsub("\n", "")
  if word.reverse[0, 2].reverse == "cs"
    puts (2 ** word.length)
    2 ** word.length
  else
    puts word.reverse
    word.reverse
  end

end

def task2
  puts "How many pokemon to add?"
  number = gets.to_i
  pokemons = []
  number.times do
    puts "Enter name: "
    name = gets.chomp
    puts "Enter color: "
    color = gets.chomp
    pokemons << { name => color }
  end
  puts pokemons
  pokemons
end

task2

