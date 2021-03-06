class AddNamesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dealership, :string
    add_index :users, :username, unique: true
  end
end
