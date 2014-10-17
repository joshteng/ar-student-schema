require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTeachers < ActiveRecord::Migration
  create_table :teachers do |t|
    t.string :first_name
    t.string :last_name
  end

end
