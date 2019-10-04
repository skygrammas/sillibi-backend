class AddAssignmentsCounterToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :assignments_count, :integer, default: 0
  end
end
