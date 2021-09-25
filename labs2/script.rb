def script
  puts 'Enter word: '
  word = gets.to_s.gsub("\n", "")

  puts word

  if word.reverse[0, 2].reverse == "cs"
    puts (2 ** word.length)
  else
    puts word.reverse
  end

end

def script2
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
end
script

