class AddDisplayNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :display_name, :string, null: false, limit: 80, default: ''
    add_index :users, :display_name, unique: true
  end
end
