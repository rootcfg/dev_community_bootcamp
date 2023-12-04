class AddContactNumberToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :contact_number, :string
    add_index :users, :contact_number, name: "index_users_on_contact_number", unique: true
  end
end
