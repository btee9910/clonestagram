class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :username
      t.string :password_digest
      t.text :display_name
      t.text :profile_picture
      t.text :biography
      t.text :phone_number
      t.text :gender
      t.text :website

      t.timestamps
    end
  end
end
