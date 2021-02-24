require 'pry'

class School
attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        @roster.each do |grade, people|
            people.sort!
        end
    end
end