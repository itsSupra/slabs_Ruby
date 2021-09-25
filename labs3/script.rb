def file
  file = File.open("labs3/student.txt", "r") do |file|
    puts file.read()
    file.close
  end
end

def age
  age = gets.to_i
  puts "Enter ur age: " << age
end

def write
  file = file.open("result.txt", "w") do |file|
    file.write
  end
end
file