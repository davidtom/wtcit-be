# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

g = Game.create(name: "Test Game")
c = Category.create(name: "animals")
img = Image.create(url: "http://imgur.com/8LnMbLs", answer: "rdj")
c.images << img
img.games << g
