class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :postal_code, :integer
    add_column :users, :prefecture_code, :integer
    add_column :users, :city, :integer
    add_column :users, :street, :integer
  end
end
