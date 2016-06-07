class Prof < ActiveRecord::Migration
  def up
    add_column :profiles, :email, :string
    add_column :profiles, :user_id, :integer
  end

  def down
    remove_column :profiles, :email, :string
    remove_column :profiles, :user_id, :integer
  end
end
