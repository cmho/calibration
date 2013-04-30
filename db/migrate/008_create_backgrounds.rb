class CreateBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :backgrounds do |t|
      t.integer :character
      t.string :name
      t.string :specification
      t.integer :rating
      t.timestamps
    end
  end

  def self.down
    drop_table :backgrounds
  end
end
