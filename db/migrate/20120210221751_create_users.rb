class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_name, :null => false
      t.string :user_nickname, :null => false
      t.string :password, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
