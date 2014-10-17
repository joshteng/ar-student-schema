require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateClasses < ActiveRecord::Migration

  def change
    create_table :class do |t|
      t.string :name
      t.integer :teacher_id
      t.integer :student_id
      t.timestamp
    end
  end

end
