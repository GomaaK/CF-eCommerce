FactoryGirl.define do 
	sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do
		email 
		password "1234567890"
		first_name "Test"
		last_name "User"
		admin false
	end
	factory :user2, class: User do
		email
		password "12345678"
		first_name "User2"
		last_name "Test"
		admin false
	end
	factory :admin, class: User do
		email 
		password "1234567890"
		first_name "Admin"
		last_name "Test"
		admin true
	end
	
end