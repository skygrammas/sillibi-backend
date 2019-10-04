class CreateSyllabuses < ActiveRecord::Migration[6.0]
  def change
    create_table :syllabuses do |t|
      t.references :course, null: false, foreign_key: true
      t.text :base64

      t.timestamps
    end
  end
end
