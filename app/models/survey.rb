class Survey < ApplicationRecord
	serialize :rating, Array

	validates :name, presence: true

	validates :fr, presence: true, numericality: { only_int: true }
	validates_numericality_of :fr, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :fp, presence: true, numericality: { only_int: true }
	validates_numericality_of :fp, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :fo, presence: true, numericality: { only_int: true }
	validates_numericality_of :fo, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :fs, presence: true, numericality: { only_int: true }
	validates_numericality_of :fs, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :fc, presence: true, numericality: { only_int: true }
	validates_numericality_of :fc, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :fm, presence: true, numericality: { only_int: true }
	validates_numericality_of :fm, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :ft, greater_than_or_equal_to: -5, less_than_or_equal_to: 5
end
