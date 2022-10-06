class State < ApplicationRecord
	has_many :companies
	has_many :cities
	belongs_to :country
end
