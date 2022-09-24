class AddChangesToSkill < ActiveRecord::Migration[6.1]
  def change
    add_column :skills, :about, :text

    remove_column :skills, :level, :string
    remove_column :skills, :skill_type, :string

  end
end
