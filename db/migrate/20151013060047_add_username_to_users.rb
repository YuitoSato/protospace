class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :team, :string
    add_column :users, :profile, :text
    add_column :users, :works, :string
  end
end
