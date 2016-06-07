class Addfriends < ActiveRecord::Migration
  def up
  add_column :friends, :firstname, :string
  add_column :friends, :lastname, :string  
  add_column :friends, :email, :string
  add_column :friends, :phone, :bigint
  add_column :friends, :imei, :bigint
  end

  def down
  remove_column :friends, :firstname, :string
  remove_column :friends, :lastname, :string  
  remove_column :friends, :email, :string
  remove_column :friends, :phone, :bigint
  remove_column :friends, :imei, :bigint
  end
end
