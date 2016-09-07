require 'rails_helper'

describe Product do
	context "when the product has comments" do
		before do
			@product = FactoryGirl.create(:product)
			@user = User.create!(first_name:"test", email: "test000@mail.com", password: "asdfghj")
			@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
			@product.comments.create!(rating: 3, user: @user, body: "okay bike!")
			@product.comments.create!(rating: 5, user: @user, body: "Cool bike!")
		end
		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
		it "not valid" do # make sure that our validations work properly
			expect(Product.new(description: "nice vinyl")).not_to be_valid # a product without a name
		end
	end
end