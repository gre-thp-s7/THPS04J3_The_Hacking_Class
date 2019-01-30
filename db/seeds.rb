# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# optional: true

require 'faker'

Course.destroy_all
Student.destroy_all

10.times do
  course = Course.create!(name: Faker::StarWars.unique.wookiee_sentence)
end

30.times do
  student = Student.create!(name: Faker::StarWars.unique.character, courses_id: rand(1..10))
end
