class AddAuthenticationTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    # make sure there are no users with the same token at a db level
    add_column :users, :auth_token, :string, default: ""
    add_index :users, :auth_token, unique: true
  end
end
