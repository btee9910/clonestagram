class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :msg
      t.integer :user_id
      t.integer :photo_id

      t.timestamps
    end
  end
end
