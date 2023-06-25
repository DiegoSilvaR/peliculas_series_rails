# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Generar películas
5.times do
  Movie.create(
    name: Faker::Movie.title,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end

# Generar series
5.times do
  Serie.create(
    name: Faker::TvShows::RickAndMorty.character,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end

# Generar documentales
5.times do
  DocumentaryFilm.create(
    name: Faker::Lorem.sentence(word_count: 3),
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end
