User.destroy_all
Game.destroy_all
Bay.destroy_all

new_user = User.create(name: "Dominique", nickname: "dom")

g1 = Game.create(name: "Name", description: "A lot of stuuf oapgij", club: "wedge")
g2 = Game.create(name: "Name2", description: "A lot of stuuf oapgij", club: "drive")
g3 = Game.create(name: "Name3", description: "A lot of stuuf oapgij", club: "horse")

b1 = Bay.create(level: 'upper', price: 45, name: 'Lubbock')
b2 = Bay.create(level: 'upper', price: 55, name: 'Fort Worth')
b3 = Bay.create(level: 'upper', price: 55, name: 'El Paso')
b4 = Bay.create(level: 'upper', price: 45, name: 'Fredericksburg')
b5 = Bay.create(level: 'middle', price: 55, name: 'San Antonio')
b6 = Bay.create(level: 'middle', price: 65, name: 'Houston')
b7 = Bay.create(level: 'middle', price: 65, name: 'Dallas')
b8 = Bay.create(level: 'middle', price: 55, name: 'Austin')
b9 = Bay.create(level: 'lower', price: 30, name: 'McAllen')
b10 = Bay.create(level: 'lower', price: 40, name: 'Galveston')
b11 = Bay.create(level: 'lower', price: 40, name: 'Corpus Christi')
b12 = Bay.create(level: 'lower', price: 30, name: 'Laredo')


