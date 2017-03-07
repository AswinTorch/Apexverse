class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    drop_table :posts
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
