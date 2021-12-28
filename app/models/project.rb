class Project < ApplicationRecord
  has_one_attached :photo
  has_rich_text :description
  validates :name, presence: true
end
