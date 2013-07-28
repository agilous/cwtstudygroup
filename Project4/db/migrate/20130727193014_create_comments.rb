class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :photo
      t.references :user
      t.datetime :date_time
      t.text :comment

      t.timestamps
    end
    add_index :comments, :photo_id
    add_index :comments, :user_id
  end
end
