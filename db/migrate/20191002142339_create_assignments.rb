class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :course, null: false, foreign_key: true
      t.string :name
      t.datetime :date
      t.string :description
      t.string :points

      t.timestamps
    end
  end
end
