class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_number
      t.string :section
      t.string :term
      t.string :instructor
      t.string :color

      t.timestamps
    end
  end
end
