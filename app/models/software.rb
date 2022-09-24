class Software < ApplicationRecord
	validates :name, :about, presence: true
	has_one_attached :image
end
