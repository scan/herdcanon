class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :title, null: false, limit: 180
      t.string :slug, null: false, limit: 255
      t.boolean :published, null: false, default: false
      t.text :body

      t.timestamps null: false
    end

    add_index :posts, [:slug, :published]
    add_index :posts, [:published, :created_at]
  end
end
