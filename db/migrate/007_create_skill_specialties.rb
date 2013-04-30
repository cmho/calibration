class CreateSkillSpecialties < ActiveRecord::Migration
  def self.up
    create_table :skill_specialties do |t|
      t.integer :character
      t.string :skill
      t.string :specialty
      t.integer :rating
      t.timestamps
    end
  end

  def self.down
    drop_table :skill_specialties
  end
end
