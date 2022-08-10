# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

t = Tournament.new(name: "Colorado Cup", location: "Aurora, CO", team_count: 8, date: "2022-06-18")
t.save

t = Tournament.new(name: "Mountain Getdown", location: "Aspen, CO", team_count: 16, date: "2022-07-20")
t.save

t = Tournament.new(name: "Spring Cleaning", location: "Colorado Springs, CO", team_count: 7, date: "2022-04-10")
t.save

t = Tournament.new(name: "Winter Warm-up", location: "Fort Collins, CO", team_count: 24, date: "2022-12-5")
t.save