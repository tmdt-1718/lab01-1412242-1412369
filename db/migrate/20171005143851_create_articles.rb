class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
