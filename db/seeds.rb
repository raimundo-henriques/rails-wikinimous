# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all

10.times do
  title = "#{Faker::Hacker.adjective.capitalize} #{Faker::Hacker.noun} #{Faker::Hacker.ingverb} #{Faker::Hacker.noun}"
  content = Faker::Lorem.paragraphs.join('\n').gsub('\n', ' ')
  article = Article.new(title: title, content: content)
  article.save
end
