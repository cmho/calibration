class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.integer :character
      t.string :name
      t.integer :rating
      t.boolean :favored
      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
