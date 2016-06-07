class Adding < ActiveRecord::Migration
  def up
   add_column :locations, :gmaps, :boolean
  end

  def down
   remove_column :locations, :gmaps, :boolean
  end
end
