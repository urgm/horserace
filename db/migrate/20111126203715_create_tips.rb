class CreateTips < ActiveRecord::Migration
  def self.up
    create_table :tips do |t|
      t.integer :race_id
      t.string :user_name
      t.integer :horse_no
      t.integer :rank

      t.timestamps
    end
  end

  def self.down
    drop_table :tips
  end
end
