class Person
  def initialize(age, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_service?
    @age > 18 || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

Person.new(12, name: 'Abol', parent_permission: false)
Person.can_use_service?
