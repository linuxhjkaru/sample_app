namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Hjkaru Bloom",
                 email: "hjkaru@12345.org",
                 password: "123456",
                 password_confirmation: "123456",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end