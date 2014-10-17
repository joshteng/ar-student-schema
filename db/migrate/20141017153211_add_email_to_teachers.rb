require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddEmailToTeachers < ActiveRecord::Migration

  def change
    add_column :teachers, :email, :string
  end

end
