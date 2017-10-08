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


	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :rp, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :ro, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :rs, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :rc, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :rm, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :rt, greater_than_or_equal_to: -5, less_than_or_equal_to: 5


	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :po, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :ps, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :pc, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :pm, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :pt, greater_than_or_equal_to: -5, less_than_or_equal_to: 5


	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :os, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :oc, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :om, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :ot, greater_than_or_equal_to: -5, less_than_or_equal_to: 5


	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :sc, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :sm, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :st, greater_than_or_equal_to: -5, less_than_or_equal_to: 5


	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :cm, greater_than_or_equal_to: -5, less_than_or_equal_to: 5

	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :ct, greater_than_or_equal_to: -5, less_than_or_equal_to: 5


	validates :ft, presence: true, numericality: { only_int: true }
	validates_numericality_of :mt, greater_than_or_equal_to: -5, less_than_or_equal_to: 5
end











