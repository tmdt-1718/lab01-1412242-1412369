class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :content
      t.string :cover
      t.integer :views
      t.string :title
      t.string :poster

      t.timestamps
    end
  end
end
