User.destroy_all
Game.destroy_all
Bay.destroy_all

new_user = User.create(name: "Dominique", nickname: "dom")

g1 = Game.create(name: "Premiere Golf", description: "This is a game for all skill levels, you score more points the farther and more accurate the shot!")
g2 = Game.create(name: "Premiere Pressure", description: "The pressure is on! With varying assigned targets, you get more points the more accurate the shot.")
g3 = Game.create(name: "Premiere Chip", description: "For those who want to work on their short game, use only our closest targets to rack up the points.")

b1 = Bay.create(level: 'Upper', price: 45, name: 'Lubbock')
b2 = Bay.create(level: 'Upper', price: 55, name: 'Fort Worth')
b3 = Bay.create(level: 'Upper', price: 55, name: 'El Paso')
b4 = Bay.create(level: 'Upper', price: 45, name: 'Fredericksburg')
b5 = Bay.create(level: 'Middle', price: 55, name: 'San Antonio')
b6 = Bay.create(level: 'Middle', price: 65, name: 'Houston')
b7 = Bay.create(level: 'Middle', price: 65, name: 'Dallas')
b8 = Bay.create(level: 'Middle', price: 55, name: 'Austin')
b9 = Bay.create(level: 'Lower', price: 30, name: 'McAllen')
b10 = Bay.create(level: 'Lower', price: 40, name: 'Galveston')
b11 = Bay.create(level: 'Lower', price: 40, name: 'Corpus Christi')
b12 = Bay.create(level: 'Lower', price: 30, name: 'Laredo')


