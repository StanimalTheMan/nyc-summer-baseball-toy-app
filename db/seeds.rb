# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Batting.destroy_all
Pitching.destroy_all

player1 = Player.create(name: "Stan Choi", team: "Giants")
player2 = Player.create(name: "Zaviel Young", team: "Giants")

batting1 = Batting.create(G: 2, PA: 8, AB: 7, R: 0, H: 0, doubles: 0, triples: 0, HR: 0, RBI: 0, BB: 1, K: 2, SF: 0, HBP: 0, ROE: 0, SB: 0, CS: 0, AVG: 0.000, OBP: 0.125, SLG: 0.000, OPS: 0.125, wOBA: 0.090, BABIP: 0.000, CNT: 0.714, RC: 0.0, RC27: 0.1, player: player1)
pitching1 = Pitching.create(G: 2, GS: 0, W: 0, L: 0, SV: 1, CG: 0, GF: 0, IP: 4.2, BF: 22, H: 1, R: 4, ER: 0, BB: 7, K: 5, HBP: 1, doubles: 0, triples: 0, HR: 0, RA: 7.71, ERA: 0.00, WHIP: 1.71, FIP: 7.07, walks_per_nine: 13.50, k_per_nine: 9.64, BABIP: 0.100, BAA: 0.067, player: player2)