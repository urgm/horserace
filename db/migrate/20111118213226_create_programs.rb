class CreatePrograms < ActiveRecord::Migration
  def self.up
    create_table :programs do |t|
      t.integer :race_no
      t.integer :position_no
      t.integer :horse_no
      t.string :horse_name
      t.integer :age
      t.integer :sex
      t.string :jockey
      t.integer :horse_weight
      t.integer :weight

      t.timestamps
    end
  end

  def self.down
    drop_table :programs
  end
end
