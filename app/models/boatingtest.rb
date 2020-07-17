class BoatingTest

    attr_accessor :name, :status, :instructor, :student

    @@all = []

    def initialize(name, status=nil, instructor, student)
        @name = name
        @status = status
        @instructor = instructor
        @student = student
        @@all << self
    end

    def self.all
        @@all
    end

end
