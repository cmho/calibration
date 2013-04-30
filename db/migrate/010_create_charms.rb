class CreateCharms < ActiveRecord::Migration
  def self.up
    create_table :charms do |t|
      t.integer :character
      t.string :name
      t.string :cost
      t.string :type
      t.string :duration
      t.string :notes
      t.string :skill
      t.timestamps
    end
  end

  def self.down
    drop_table :charms
  end
end
