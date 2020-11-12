class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :video, optional: true, foreign_key: true
      t.belongs_to :blog, optional: true, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
