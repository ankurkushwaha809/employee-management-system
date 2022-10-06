class User < ApplicationRecord
	belongs_to :company
	belongs_to :user_role
	has_many :images
	has_many :user_regions
	

end
