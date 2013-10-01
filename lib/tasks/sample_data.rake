namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    return if Rails.env.production?

    User.destroy_all
    Course.destroy_all

    coordinator = User.create!(first_name: "Example",
                               last_name: "User",
                               email: "example@example.org",
                               password: "foobarrr",
                               password_confirmation: "foobarrr")
    coordinator.roles << Role::ROLES[:coordinator]

    # create some courses
    10.times do
      c = Course.create(description: Faker::Lorem.words(2).join(' '),
                        start_date: Time.at(rand * Time.now.to_f))

      # put some students in this course
      20.times do
      first_name  = Faker::Name.first_name
      last_name  = Faker::Name.last_name
      email = Faker::Internet.email
      password  = "password"
      u = User.create!(first_name: first_name,
                       last_name: last_name,
                       email: email,
                       password: password,
                       password_confirmation: password)

      u.roles << Role::ROLES[:student]
      u.courses << c
    end
    end

  end
end
