require 'rake'
require 'rspec/core/rake_task'
require_relative 'db/config'
require_relative 'lib/students_importer'
require_relative 'app/models/teacher'

desc "create the database"
task "db:create" do
  touch 'db/ar-students.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/ar-students.sqlite3'
end

desc "migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
task "db:migrate" do
  ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
  ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
  ActiveRecord::Migrator.migrate(ActiveRecord::Migrator.migrations_paths, ENV["VERSION"] ? ENV["VERSION"].to_i : nil) do |migration|
    ENV["SCOPE"].blank? || (ENV["SCOPE"] == migration.scope)
  end
end

desc "populate the test database with sample data"
task "db:populate" do
  StudentsImporter.import
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end


desc "add 9 teachers"
task "db:seed_teacher" do
  Teacher.create({ first_name: 'John', last_name: 'Wong', email: 'john@example.com' })
  Teacher.create({ first_name: 'John', last_name: 'Wong', email: 'john1@example.com' })
  Teacher.create({ first_name: 'John', last_name: 'Wong', email: 'john2@example.com' })
  Teacher.create({ first_name: 'John', last_name: 'Wong', email: 'john3@example.com' })
  Teacher.create({ first_name: 'John', last_name: 'Wong', email: 'john4@example.com' })
  Teacher.create({ first_name: 'John', last_name: 'Wong', email: 'john5@example.com' })
  Teacher.create({ first_name: 'John', last_name: 'Wong', email: 'john6@example.com' })
  Teacher.create({ first_name: 'John', last_name: 'Wong', email: 'john7@example.com' })
  Teacher.create({ first_name: 'John', last_name: 'Wong', email: 'john8@example.com' })
end


desc "Run the specs"
RSpec::Core::RakeTask.new(:specs)

task :default  => :specs
