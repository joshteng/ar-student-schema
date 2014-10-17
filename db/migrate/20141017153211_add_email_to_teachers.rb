require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddEmailToTeachers < ActiveRecord::Migration
  add_column :teachers, :email, :string

end