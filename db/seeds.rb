
Genre.destroy_all
Author.destroy_all
Book.destroy_all
horror = Genre.create(name: 'Horror')
poe = Author.create(name: 'POe')

extra = Book.create(name: 'Narraciones', author: poe, genre: horror)

puts extra.author.name
puts extra.genre.name
