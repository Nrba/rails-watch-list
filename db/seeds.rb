# frozen_string_literal: false

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts %(Cleaning up database...)
Movie.destroy_all
puts %(Database cleaned!)

10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: %(Good film),
    poster_url: Faker::LoremFlickr.image(size: '300x450'),
    rating: Faker::Number.within(range: 0.0..10.0)
  )
end
puts %(Movies created)
