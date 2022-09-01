class Student
    def initialize(name)
        @name = name
    end

    def cal_avg(data)
        sum = 0
        for score in data do
            sum += score
        end
        avg = sum / data.length
        return avg
    end

    def judge(avg)
        result = ""
        if avg >= 60
            result = "合格"
        else
            result = "不合格"
        end
        return result
    end

    # nameをメソッド外から参照できるように
    attr_accessor :name
end

a001 = Student.new("Murata")
data = [60, 80, 10, 42, 67]
avg = a001.cal_avg(data)
result = a001.judge(avg)

p a001.name + "の平均点は" + avg.to_s + "で" + result + "です。"
