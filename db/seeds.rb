# g1 = Game.create(name: "Test Game1")
# g2 = Game.create(name: "Test Game2")
# g3 = Game.create(name: "Test Game3")
c2 = Category.create(name: 'people')
c = Category.create(name: "animals")
img = Image.create(url: "http://animals.sandiegozoo.org/sites/default/files/2016-08/category-thumbnail-mammals_0.jpg", answer: "panda")
img2 = Image.create(url: "https://cdn.pixabay.com/photo/2017/01/16/19/17/horses-1984977_1280.jpg", answer: "horses")
img3 = Image.create(url: "https://cdn.pixabay.com/photo/2015/07/09/22/50/bear-838688_1280.jpg", answer: "bear")
img4 = Image.create(url: 'https://flatiron-v3-production.imgix.net/jeff-katz.jpg?fit=facearea&facepad=2&w=240&h=240', answer: "jeff")
c.images << img
c.images << img2
c.images << img3
c2.images << img4
# img.games << g1
# img.games << g2
# img.games << g3
