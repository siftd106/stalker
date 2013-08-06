namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    return if Rails.env.production?

    User.destroy_all
    Course.destroy_all

    User.create!(first_name: "Example",
                 last_name: "User",
                 email: "example@example.org",
                 password: "foobarrr",
                 password_confirmation: "foobarrr")
    99.times do |n|
      first_name  = Faker::Name.first_name
      last_name  = Faker::Name.last_name
      email = "example-#{n+1}@example.com"
      password  = "password"
      User.create!(first_name: first_name,
                   last_name: last_name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    10.times do
      Course.create(description: Faker::Lorem.words(3).join(' ') )
    end

  end
end
