STUDENTS = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/student.txt"
RESULT = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/result.txt"

def script
  students = []
  File.foreach(STUDENTS) { |line| students << (line.chomp) }
  loop do
    puts "Print age or \"-1\" for exit"
    age = gets.to_i
    if age == 1
      puts "Ur print -1! Program is closed\n"
      break
    end
    if students.size == 0
      puts "All students are transferred to another file\n"
      break
    end
    for stud in students
      File.write(RESULT, "#{stud}\n", mode: "a") if stud.include?("#{age}")
      students.delete(stud) if stud.include?("#{age}")
    end
  end
  File.foreach(RESULT) { |line| puts line }
end

script