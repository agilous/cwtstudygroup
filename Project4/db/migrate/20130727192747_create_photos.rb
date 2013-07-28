class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.datetime :date_time
      t.string :file_name
      t.references :user

      t.timestamps
    end
    add_index :photos, :user_id
  end
end
