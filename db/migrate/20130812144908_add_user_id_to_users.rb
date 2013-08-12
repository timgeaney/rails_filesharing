class AddUserIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_id, :integer

    add_index :users, [:user_id, :created_at]
  end
end
