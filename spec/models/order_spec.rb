require 'rails_helper'

describe Order, :type => :model do

	context "should belong to product and user" do
		it {should belong_to(:product)}
		it {should belong_to(:user)}
	end
end