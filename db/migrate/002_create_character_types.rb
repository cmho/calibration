class CreateCharacterTypes < ActiveRecord::Migration
  def self.up
    create_table :character_types do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :character_types
  end
end
