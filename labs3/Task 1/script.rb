STUDENTS = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/student.txt"
RESULT = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/result.txt"

def index
  File.foreach(STUDENTS) { |students| puts students }
end

def find(id)
  file = File.open(STUDENTS)
  file.readlines.each do |students|
    number = students
    id << [number[0]]
  end
  id
end

def where(pattern)
  File.foreach(STUDENTS).with_index do |student, index|
    @student_name = index if student.include?(pattern)
  end
  puts @student_name
end

def update(id, text)
  file = File.open(RESULT, 'w')
  File.foreach(STUDENTS).with_index do |student, index|
    file.puts(id == index ? text : student)
  end
  file.close
  File.write(STUDENTS, File.read(RESULT))
  File.delete(RESULT) if File.exist?(RESULT)

end

def delete(id)
  file = File.open(STUDENTS)
  File.foreach(STUDENTS).with_index do ||
  end
end

find(1)