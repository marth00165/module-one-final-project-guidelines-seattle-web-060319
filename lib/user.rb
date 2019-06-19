class User

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :name, :score

  attr_reader :id

  def initialize(name, grade, id=nil)
    @id = id
    @name = name
    @score = score
  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = "DROP TABLE IF EXISTS students"
    DB[:conn].execute(sql)
  end

  def save
    sql = <<-SQL
      INSERT INTO students (name, grade)
      VALUES (?, ?)
    SQL

    DB[:conn].execute(sql, self.name, self.grade)

  end

  def self.create(name:, score:)
    student = Student.new(name, score)
    student.save
  end

  def self.all
    sql = "SELECT * FROM users"
    DB[:conn].execute(sql)
  end

end
