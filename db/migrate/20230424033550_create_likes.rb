class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.boolean :liked
      t.integer :user_id
      t.integer :photo_id

      t.timestamps
    end
  end
end
