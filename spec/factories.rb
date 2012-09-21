FactoryGirl.define do |variable|
	factory :user do
		name "Michael Fergus"
		email "mhartle@example.com"
		password "foobar"
		password_confirmation "foobar"
end
end