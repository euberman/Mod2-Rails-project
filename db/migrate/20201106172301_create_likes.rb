class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.integer :media_id
      t.string :media_type
      
      t.timestamps null: false
    end
    # add_index :likes, [:media_type, :media_id]

  end
end
