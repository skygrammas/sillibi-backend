class RenameColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :courses, :course_name, :name
    rename_column :courses, :course_number, :number
  end
end
