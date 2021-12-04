STUDENTS = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/student.txt"
RESULT = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/result.txt"

def index
  File.foreach(STUDENTS) { |students| puts students }
end

def find(id)
  File.foreach(STUDENTS).with_index do |student, index|
    if (id == index)
      puts student
    end
  end
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
  file = File.open(RESULT, 'w')
  File.foreach(STUDENTS).with_index do |student, index|
    if id == index
    else
      file.puts(student)
    end
  end
  file.close
  File.write(STUDENTS, File.read(RESULT))
  File.delete(RESULT) if File.exist?(RESULT)
end

delete(1)