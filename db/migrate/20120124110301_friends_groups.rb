class FriendsGroups < ActiveRecord::Migration
  def up
   create_table :friends_groups do |t|
   t.integer :friend_id
   t.integer :group_id
  end
end
  def down
  drop_table :friends_groups
  end
end
