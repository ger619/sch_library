require_relative './student'
class Classroom
  attr_accessor :label
  attr_reader :student

  def initialize(label)
    @student = []
    @label = label
  end

  def add_student(student)
    @student << student
    student.add_to_class(self)
  end
end
