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
Review.destroy_all
Player.destroy_all
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
game_1 = Game.new(price: 7.0, game_size: 10 , date: DateTime.now, location: "Colombo Centre, Southwark, London", description: "All abilities are welcome to join, a mix between regulars and new players, quality new 4G artificial grass surface, closest station: Southwark, Please arrive 10 mins before KO so you are ready to start on time", gender:"Male", level: "Amatuer", completed: false)
game_1.user = user_1
game_1.save!

game_2 = Game.new(price: 5.0, game_size: 10 , date: DateTime.now, location: "King Solomon Academy, Marylebone, London", description: "60mins game, arrive 10-15mins before kick off, no shouting and no aggressive behaviour, Respect Host decision, 4G artificial pitch. AG boots or astro ok. Team colour: Please bring both a light and dark top with you to help splitting the teams at the pitch", gender: "Female", level: " Intermediate", completed: false)
game_2.user = user_2
game_2.save!

game_3 = Game.new(price: 6.0, game_size: 10 , date: DateTime.now, location: "City of London Academy. Islington, London", description: "join us if you are looking to play social 7-a-side football in North London. This casual and inclusive game is open to players of all skills and abilities, Please come 10 minutes before the kick-off.", gender: "Any", level: "Casual", completed: false)
game_3.user = user_3
game_3.save!

game_4 = Game.new(price: 5.50, game_size: 10 , date: DateTime.now, location: "Battersea Park All Weather Sports Ground, London", description: "1 hour game, everyone welcome to join. Battersea Park station(Northern): 5min walk, Limited street-parking. Changing Rooms and showers available. Any questions DM me", gender: "Male", level: "Advanced", completed: false)
game_4.user = user_4
game_4.save!

game_5 = Game.new(price: 7.5, game_size: 10 , date: DateTime.now, location: "Powerleague, Shoreditch, London", description: "Closest train station is Shoredtch. Meet 10 minutes before kick-off outside Pitch 4, people who turn up late might lose their spot. 3G artificial grass surface, outdoors, covered pitch. Everyone must play fair, respect their oppenents and fellow players. Fresh bibs will be provided ", gender: "Any", level: "Intermediate", completed: false)
game_5.user = user_5
game_5.save!

game_6 = Game.new(price: 6.30, game_size: 10 , date: DateTime.now, location: "Trinity Sports Centre, Manchester", description: "Come and play a casual footbal game in Central Manchester. We play at Pitch 2 (Middle pitch), we promote a friendly atmosphere - no shouting or aggressive behaviour. If you can't make it, ensure you remove your name from the list ASAP. No spot selling or trading allowed!. All weather 4G artifiacial grass. Big goals with side lines. Footwear: Astro-turfs or moulds recommended, no metal studs or blades. Changing rooms and showers available", gender: "Male", level: "Casual", completed: false)
game_6.user = user_6
game_6.save!

game_7 = Game.new(price: 6.0, game_size: 10 , date: DateTime.now, location: "Goals Sporta Centres, Leeds", description: "All abilities are welcome to join. Mix betwwen regulars and new players. Quality 4G artificial grass surface. No metal studs. Shoowers & changing rooms available. free parking available. Please bring both light and dark top with you to help splitting the teams at the pitch in case of no bibs", gender: "female", level: "Amatuer", completed: false)
game_7.user = user_7
game_7.save!

game_8 = Game.new(price: 5.0, game_size: 10 , date: DateTime.now, location: "Stannyfields, Liverpool", description: "Please arrive 10-15mins before. 1-hour slot. Brief intros, team selections and we'll kick-off", gender: "Any", level: "Advanced", completed: false)
game_8.user = user_8
game_8.save!

game_9 = Game.new(price: 5.0, game_size: 10 , date: DateTime.now, location: "Manchester Communication Academy, Manchester", description: "All-weather 4G artificial grass. Big goals with sidelines. Footwear: Astro-turfs or moulds recommended. Guarantee a full refund as credit in your wallet when you honour the game's refund policy(check before booking)", gender: "Male", level: "Casual", completed: false)
game_9.user = user_9
game_9.save!

game_10 = Game.new(price: 5.15, game_size: 10 , date: DateTime.now, location: "Horfield Leisure, Bristol", description: "Game on!!✔️🔥 Let's make sure that we arrive early with both dark and light coloured tops, so we can sort teams out quickly and make the most of our playing time!Any new players, just ask forr FootyHub and you will be pointed in the right direction. if you can no longer attend the game, you must vacate your spot by clicking leave game. Enjoy!", gender: "Any", level: "Intermediate", completed: false)
game_10.user = user_10
game_10.save!
puts "Games created!"

puts "Creating players..."

player_1 = Player.new(accepted: false, team: 1)
player_1.user = user_1
player_1.game = game_1
player_1.save!

player_2 = Player.new(accepted: false, team: 1)
player_2.user = user_2
player_2.game = game_2
player_2.save!

player_3 = Player.new(accepted: false, team: 1)
player_3.user = user_3
player_3.game = game_3
player_3.save!

player_4 = Player.new(accepted: false, team: 1)
player_4.user = user_4
player_4.game = game_4
player_4.save!

player_5 = Player.new(accepted: false, team: 1)
player_5.user = user_5
player_5.game = game_5
player_5.save!

player_6 = Player.new(accepted: false, team: 2)
player_6.user = user_6
player_6.game = game_6
player_6.save!

player_7 = Player.new(accepted: false, team: 2)
player_7.user = user_7
player_7.game = game_7
player_7.save!

player_8 = Player.new(accepted: false, team: 2)
player_8.user = user_8
player_8.game = game_8
player_8.save!

player_9 = Player.new(accepted: false, team: 2)
player_9.user = user_9
player_9.game = game_9
player_9.save!

player_10 = Player.new(accepted: false, team: 2)
player_10.user = user_10
player_10.game = game_10
player_10.save!
puts "Players created!"

puts "Creating reviews..."
review_1 = Review.new
review_1.player = player_1
review_1.save!

review_2 = Review.new
review_2.player = player_2
review_2.save!

review_3 = Review.new
review_3.player = player_3
review_3.save!

review_4 = Review.new
review_4.player = player_4
review_4.save!

review_5 = Review.new
review_5.player = player_5
review_5.save!

review_6 = Review.new
review_6.player = player_6
review_6.save!

review_7 = Review.new
review_7.player = player_7
review_7.save!

review_8 = Review.new
review_8.player = player_8
review_8.save!

review_9 = Review.new
review_9.player = player_9
review_9.save!


review_10 = Review.new
review_10.player = player_10
review_10.save!
puts "Reviews created!"
