class Student
    
    def initialize(name)
        @name = name
    end

    def avg(math, english, japanese)
        puts @name + "の平均点は" + ((math + english + japanese) / 3).to_s
    end
end

a001 = Student.new("Murata")
a001.avg(80, 70, 60)
