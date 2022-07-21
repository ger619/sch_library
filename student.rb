require_relative './person'

class Student < Person
  def initialize(age, classroom, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def add_to_class(classroom)
    @classroom = classroom
    classroom.Student.push(self) unless classroom.Student.include?(self)
  end
end
