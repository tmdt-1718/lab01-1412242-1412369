class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :cover
      t.string :owner
      t.integer :total_views

      t.timestamps
    end
  end
end
