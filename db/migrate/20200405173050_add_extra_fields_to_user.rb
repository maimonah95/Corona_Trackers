class AddExtraFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name,:string
    add_column :users, :role,:string, :default => "R_user"
    add_column :users, :age,:integer
    add_column :users, :phone,:integer
  end
end
