class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id = nil)
    @name = name
    @id = id
    @grade = grade
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT
      );
      SQL

      DB[:conn].execute(sql)
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
