# require_relative '../config/environment.rb'
require_relative '../app/models/student.rb'
require_relative '../app/models/boatingtest.rb'
require_relative '../app/models/instructor.rb'
require "pry"

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alex = Student.new("Alex")
instructor1 = Instructor.new("Kevin")
instructor2 = Instructor.new("Kevin")
test1 = BoatingTest.new("Test 1", 'failed', instructor1, alex)
test1 = BoatingTest.new("Test 2", 'passed', instructor2, alex)
# instructor1.pass_student(alex, "Test 1")
# instructor2.pass_student(alex, "Test 2")

puts alex.grade_percentage

# Student.find_student("Alex")


# binding.pry
0 #leave this here to ensure binding.pry isn't the last line

