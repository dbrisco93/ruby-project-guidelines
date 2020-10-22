User.destroy_all
Bay.destroy_all
Game.destroy_all

new_user = User.create(name: "Dominique", nickname: "dom")

g1 = Game.create(name: "Name", description: "A lot of stuuf oapgij", club: "wedge")
g2 = Game.create(name: "Name2", description: "A lot of stuuf oapgij", club: "drive")
g3 = Game.create(name: "Name3", description: "A lot of stuuf oapgij", club: "horse")
