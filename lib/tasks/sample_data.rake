namespace :db do 
	describe "Fill database with sample data"
	task populate: :environment do
		admin = User.create!(name: "Example User",
			email: "example@railstutorial.org",
			password: "foobar",
			password_confirmation: "foobar")
		admin.toggle!(:admin)
		
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@railsturotial.org"
			password = "password"
			User.create!(name: name,
				email: email,
				password: password,
				password_confrimation: password)
		end
	end
end