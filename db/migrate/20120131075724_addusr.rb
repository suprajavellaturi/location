class Addusr < ActiveRecord::Migration
  def up
   add_column :users, :firstname, :string
   add_column :users, :lastname, :string
   add_column :users, :phone, :bigint
   add_column :users, :imeino, :bigint
  end

  def down
   remove_column :users, :firstname, :string
   remove_column :users, :lastname, :string
   remove_column :users, :phone, :bigint
   remove_column :users, :imeino, :bigint
  end
end
