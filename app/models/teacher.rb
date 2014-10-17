require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, uniqueness: { case_sensitive: false }
end
