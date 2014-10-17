require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :classes
  has_many :students, through: :classes


  validates :email, uniqueness: { case_sensitive: false }
end


# t1 = Teacher.find(123)
# t1.classes
# t1.students
# t1.students.create(first_name: "You Jing", last_name: "Wong")

# geography = Class.new(name: "Geography") #ths will not work!

# geography.teacher = t1
# geography.student = rizal

# geography.save