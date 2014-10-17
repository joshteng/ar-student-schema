require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :students


  validates :email, uniqueness: { case_sensitive: false }
end
