class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :poster
      t.integer :views
      t.string :url
      t.string :album

      t.timestamps
    end
  end
end
