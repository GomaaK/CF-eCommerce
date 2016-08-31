class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
	validates :name, presence: true

	def lowest_rating_comment
		coments.rating_asc.first
	end

	def average_rating
		comments.average(:rating).to_f
	end


end
