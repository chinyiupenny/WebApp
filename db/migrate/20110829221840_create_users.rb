class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phonenumber
      t.integer :user_role

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
