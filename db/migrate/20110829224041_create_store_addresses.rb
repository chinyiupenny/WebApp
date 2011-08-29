class CreateStoreAddresses < ActiveRecord::Migration
  def self.up
    create_table :store_addresses do |t|
      t.string :address
      t.string :phone
      t.integer :store_id

      t.timestamps
    end
  end

  def self.down
    drop_table :store_addresses
  end
end
