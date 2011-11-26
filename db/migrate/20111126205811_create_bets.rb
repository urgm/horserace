class CreateBets < ActiveRecord::Migration
  def self.up
    create_table :bets do |t|
      t.integer :race_id
      t.string :user_name
      t.integer :type
      t.integer :first_horse_no
      t.integer :second_horse_no
      t.integer :third_horse_no
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :bets
  end
end
