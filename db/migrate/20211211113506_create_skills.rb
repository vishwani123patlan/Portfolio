class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.string :level
      t.string :skill_type

      t.timestamps
    end
  end
end
