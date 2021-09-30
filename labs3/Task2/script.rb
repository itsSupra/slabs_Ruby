STUDENTS = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/student.txt"
RESULT = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/result.txt"

def read
  people = []
  file = File.open(STUDENTS)
  file.readlines.each do |students|
    number = students.split (".")
    people << [number[0], number[1]]
  end
  file.close
  people
end

def write(content)
  file = File.open(RESULT, "w")
  content.each do |item|
    file.write "Name: #{item[0]}, age: #{item[1]}"
  end
  file.close
end

def user
  message_out "Enter age or \"-1\" for exit"
  gets.to_i
end

def main
  true_student = []
  student = read
  loop do
    age = user
    break if age == -1
    student.each do |students|
      if students[1] === age
        true_student << students
      end
    end
  end
  write(true_student)
end

ьф