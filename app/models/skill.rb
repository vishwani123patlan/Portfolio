class Skill < ApplicationRecord
  validates :skill_name, presence: true
  has_one_attached :image
end
