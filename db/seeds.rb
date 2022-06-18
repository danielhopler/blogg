# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

30.times do
  Post.create!(
    title: Faker::Fantasy::Tolkien.unique.character,
    body: Faker::Fantasy::Tolkien.unique.poem
  )
end

posts = Post.all

50.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Quote.famous_last_words
  )
end

puts "Seed finished!"
puts "#{Post.count} posts created."
puts "#{Comment.count} comments created"