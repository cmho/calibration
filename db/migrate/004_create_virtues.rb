class CreateVirtues < ActiveRecord::Migration
  def self.up
    create_table :virtues do |t|
      t.integer :character
      t.string :name
      t.integer :rating
      t.integer :channel
      t.timestamps
    end
  end

  def self.down
    drop_table :virtues
  end
end
