class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.string :title
      t.date :timestamp
      t.string :description
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
