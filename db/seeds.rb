# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

g1 = Game.create(name: "Test Game1")
g2 = Game.create(name: "Test Game2")
g3 = Game.create(name: "Test Game3")
c = Category.create(name: "animals")
img = Image.create(url: "http://imgur.com/8LnMbLs.png", answer: "rdj")
img2 = Image.create(url: "https://cdn.pixabay.com/photo/2017/01/16/19/17/horses-1984977_1280.jpg", answer: "horses")
img3 = Image.create(url: "https://cdn.pixabay.com/photo/2015/07/09/22/50/bear-838688_1280.jpg", answer: "bear")
c.images << img
c.images << img2
c.images << img3
img.games << g1
img.games << g2
img.games << g3
