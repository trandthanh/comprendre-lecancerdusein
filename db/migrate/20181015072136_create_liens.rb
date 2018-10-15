class CreateLiens < ActiveRecord::Migration[5.2]
  def change
    create_table :liens do |t|
      t.string :title
      t.string :link
      t.string :publication
      t.text :description
      t.references :question, foreign_key: true
      t.references :quotidien, foreign_key: true
      t.references :entendu, foreign_key: true

      t.timestamps
    end
  end
end
