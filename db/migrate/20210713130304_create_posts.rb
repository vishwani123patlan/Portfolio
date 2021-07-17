class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
