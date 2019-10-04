class AddCounterToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :syllabuses_count, :integer, default: 0
  end
end
