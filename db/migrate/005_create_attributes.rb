class CreateAttributes < ActiveRecord::Migration
  def self.up
    create_table :attributes do |t|
      t.integer :character
      t.string :name
      t.integer :rating
      t.timestamps
    end
  end

  def self.down
    drop_table :attributes
  end
end
