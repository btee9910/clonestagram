class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :caption
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
