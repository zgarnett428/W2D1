class Bootcamp

    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |h, k| h[k] = [] }
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end
    
    def students
        @students
    end

    def hire(new_teach)
        @teachers << new_teach
    end

    def enroll(new_kid)
        if @students.length < @student_capacity
            students << new_kid
            return true
        else
            false
        end
    end

    def enrolled?(kid)
        @students.include?(kid)
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student, grade)
        if enrolled?(student)
            @grades[student] << grade
            return true
        else
            false
        end
    end

    def num_grades(student)
        @grades[student].count
    end

    def average_grade(student)
        @grades[student].sum / num_grades(student) if enrolled?(student) && num_grades(student) > 0
    end
  
end
