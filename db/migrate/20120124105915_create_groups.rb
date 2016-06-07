class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :grouptype

      t.timestamps
    end
  end
end
