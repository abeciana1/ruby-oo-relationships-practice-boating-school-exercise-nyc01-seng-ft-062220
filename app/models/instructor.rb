class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        if BoatingTest.name == test_name && BoatingTest.student == student
            BoatingTest.status = 'passed'
        else
            BoatingTest.new(test_name, 'passed', self, student)
        end
    end

    def fail_student(student, test_name)
        if BoatingTest.name == test_name && BoatingTest.student == student
            BoatingTest.status = 'failed'
        else
            BoatingTest.new(test_name, 'failed', self, student)
        end
    end
    
end