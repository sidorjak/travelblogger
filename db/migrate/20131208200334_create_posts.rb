class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :title
      t.date :date
      t.string :tags
      t.boolean :published
      t.integer :user_id

      t.timestamps
    end
    add_index :posts, [:user_id, :created_at]
  end
end
