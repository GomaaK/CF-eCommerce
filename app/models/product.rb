class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments

	def highest_rating_comment
		comments.rating_desc.first
	end

	def lowest_rating_comment
		coments.rating_asc.first
	end

	def rating_average
		comments.average(:rating)
	end


end
