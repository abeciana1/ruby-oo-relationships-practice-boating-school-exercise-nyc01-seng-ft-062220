require "pry"

class Student

    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, status, instructor, student)
        BoatingTest.new(name, status, instructor, self)
    end

    def self.find_student(first_name)
        self.all.find { |student| student.first_name == first_name}
    end

    def grade_percentage
        total_test = BoatingTest.all.select { |test_instance| test_instance.student == self }.count.to_f
        pass_test = BoatingTest.all.select { |test_instance| test_instance.student == self && test_instance.status == 'passed' }.count.to_f
        grade = pass_test / total_test
        grade * 100
        # binding.pry
    end

end