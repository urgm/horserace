class CreateRaces < ActiveRecord::Migration
  def self.up
    create_table :races do |t|
      t.integer :race_no
      t.string :race_name
      t.integer :race_time
      t.integer :course_no
      t.integer :meeting
      t.integer :year
      t.integer :day
      t.integer :distance

      t.timestamps
    end
  end

  def self.down
    drop_table :races
  end
end
