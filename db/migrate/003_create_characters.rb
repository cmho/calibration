class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.integer :id
      t.integer :user
      t.string :name
      t.string :character_type
      t.text :motivation
      t.text :description
      t.integer :willpower
      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
