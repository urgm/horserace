class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_name, :null => false
      t.string :user_nickname, :null => false
      t.string :password_digest, :null => false

      t.timestamps
    end
  end

  # add_index :users, :user_name, :unique => true
  # add_index :users, :user_nickname, :unique => true
  # add_index :users, :password_digest, :unique => true

  def self.down
    drop_table :users
  end
end
