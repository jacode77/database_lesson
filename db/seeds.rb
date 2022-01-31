# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Author.count == 0
    5.times do |i|
        Author.create(
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            date_of_birth: Faker::Date.between(from: 60.years.ago, to: 16.years.ago)
        )
    end
end


if Book.count == 0

15.times do |i|
    Book.create(
        author_id: rand(1..5),
        title: Faker::Book.title,
        date_published: Faker::Date.between(from: 20.years.ago, to: 5.weeks.ago),
        description: Faker::Movies::Ghostbusters.quote,
        genre: Faker::Book.genre
    )
        puts "Created book number #{i}"
    end
end