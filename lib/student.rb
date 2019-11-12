class Student
  attr_accessor :id, :name, :grade

  def initialize(name, grade, id = nil)
    @name = name
    @id = id
    @grade = grade
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
