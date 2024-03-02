# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Game.destroy_all
User.destroy_all

puts "Creating User..."
user_1 = User.create!(email: "test1@test.com", password: "123456")
user_2 = User.create!(email: "test2@test.com", password: "123456")
user_3 = User.create!(email: "test3@test.com", password: "123456")
user_4 = User.create!(email: "test4@test.com", password: "123456")
user_5 = User.create!(email: "test5@test.com", password: "123456")
user_6 = User.create!(email: "test6@test.com", password: "123456")
user_7 = User.create!(email: "test7@test.com", password: "123456")
user_8 = User.create!(email: "test8@test.com", password: "123456")
user_9 = User.create!(email: "test9@test.com", password: "123456")
user_10 = User.create!(email: "test10@test.com", password: "123456")
puts "User created!"

puts "Creating games..."
game_1 = Game.new(price: 70.0, game_size: 10 , date: DateTime.now, location: "Colombo Centre, Southwark, London", description: "", gender:"", level: "Hard", completed: false)
game_1.user = user_1
game_1.save!

game_2 = Game.new(price: 50.0, game_size: 10 , date: DateTime.now, location: "King Solomon Academy, Marylebone, London", description: "Big Match", gender: "", level: "Hard", completed: false)
game_2.user = user_2
game_2.save!

game_3 = Game.new(price: 60.0, game_size: 10 , date: DateTime.now, location: "City of London Academy. Islington, London", description: "Big Match", gender: "", level: "Hard", completed: false)
game_3.user = user_3
game_3.save!

game_4 = Game.new(price: 52.50, game_size: 10 , date: DateTime.now, location: "Battersea Park All Weather Sports Ground, London", description: "Big Match", gender: "", level: "Hard", completed: false)
game_4.user = user_4
game_4.save!

game_5 = Game.new(price: 70.5, game_size: 10 , date: DateTime.now, location: "Powerleague, Shoreditch, London", description: "Big Match", gender: "", level: "Hard", completed: false)
game_5.user = user_5
game_5.save!

game_6 = Game.new(price: 66.0, game_size: 10 , date: DateTime.now, location: "Trinity Sports Centre, Manchester", description: "Big Match", gender: "", level: "Hard", completed: false)
game_6.user = user_6
game_6.save!

game_7 = Game.new(price: 62.0, game_size: 10 , date: DateTime.now, location: "Goals Sporta Centres, Leeds", description: "Big Match", gender: "", level: "Hard", completed: false)
game_7.user = user_7
game_7.save!

game_8 = Game.new(price: 50.0, game_size: 10 , date: DateTime.now, location: "Stannyfields, Liverpool", description: "Big Match", gender: "", level: "Hard", completed: false)
game_8.user = user_8
game_8.save!

game_9 = Game.new(price: 57.0, game_size: 10 , date: DateTime.now, location: "Manchester Communication Academy, Manchester", description: "Big Match", gender: "", level: "Hard", completed: false)
game_9.user = user_9
game_9.save!

game_10 = Game.new(price: 59.15, game_size: 10 , date: DateTime.now, location: "Horfield Leisure, Bristol", description: "Big Match", gender: "", level: "Hard", completed: false)
game_10.user = user_10
game_10.save!
puts "Games created!"
