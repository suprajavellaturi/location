class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.bigint :phone
      t.text :address

      t.timestamps
    end
  end
end
