require_relative '../../db/config'

class Class < ActiveRecord::Base #this will not work. Class is reserve

  belongs_to :teacher
  belongs_to :student

end