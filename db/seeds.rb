# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@prince = Artist.create!(name: "Prince")
@purple = @prince.songs.create!(title: "Purple Rain", length: 680, play_count: 393_738_864)
@beret = @prince.songs.create!(title: "Raspberry Beret", length: 215, play_count: 251_654_897)
@doves = @prince.songs.create!(title: "When Doves Cry", length: 352, play_count: 205_305_076)