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
game_1 = Game.new(price: 70.0, game_size: 10 , date: DateTime.now, location: "Colombo Centre, Southwark, London", description: "All abilities are welcome to join, a mix between regulars and new players, quality new 4G artificial grass surface, closest station: Southwark, Please arrive 10 mins before KO so you are ready to start on time", gender:"Male", level: "Semi Pro", completed: false)
game_1.user = user_1
game_1.save!

game_2 = Game.new(price: 50.0, game_size: 10 , date: DateTime.now, location: "King Solomon Academy, Marylebone, London", description: "60mins game, arrive 10-15mins before kick off, no shouting and no aggressive behaviour, Respect Host decision, 4G artificial pitch. AG boots or astro ok. Team colour: Please bring both a light and dark top with you to help splitting the teams at the pitch", gender: "Female", level: " Intermediate", completed: false)
game_2.user = user_2
game_2.save!

game_3 = Game.new(price: 60.0, game_size: 10 , date: DateTime.now, location: "City of London Academy. Islington, London", description: "join us if you are looking to play social 7-a-side football in North London. This casual and inclusive game is open to players of all skills and abilities, Please come 10 minutes before the kick-off.", gender: "Any", level: "Beginner", completed: false)
game_3.user = user_3
game_3.save!

game_4 = Game.new(price: 52.50, game_size: 10 , date: DateTime.now, location: "Battersea Park All Weather Sports Ground, London", description: "1 hour game, everyone welcome to join. Battersea Park station(Northern): 5min walk, Limited street-parking. Changing Rooms and showers available. Any questions DM me", gender: "Male", level: "Pro", completed: false)
game_4.user = user_4
game_4.save!

game_5 = Game.new(price: 70.5, game_size: 10 , date: DateTime.now, location: "Powerleague, Shoreditch, London", description: "Closest train station is Shoredtch. Meet 10 minutes before kick-off outside Pitch 4, people who turn up late might lose their spot. 3G artificial grass surface, outdoors, covered pitch. Everyone must play fair, respect their oppenents and fellow players. Fresh bibs will be provided ", gender: "Any", level: "Semi pro", completed: false)
game_5.user = user_5
game_5.save!

game_6 = Game.new(price: 66.0, game_size: 10 , date: DateTime.now, location: "Trinity Sports Centre, Manchester", description: "Come and play a casual footbal game in Central Manchester. We play at Pitch 2 (Middle pitch), we promote a friendly atmosphere - no shouting or aggressive behaviour. If you can't make it, ensure you remove your name from the list ASAP. No spot selling or trading allowed!. All weather 4G artifiacial grass. Big goals with side lines. Footwear: Astro-turfs or moulds recommended, no metal studs or blades. Changing rooms and showers available", gender: "Male", level: "Pro", completed: false)
game_6.user = user_6
game_6.save!

game_7 = Game.new(price: 62.0, game_size: 10 , date: DateTime.now, location: "Goals Sporta Centres, Leeds", description: "All abilities are welcome to join. Mix betwwen regulars and new players. Quality 4G artificial grass surface. No metal studs. Shoowers & changing rooms available. free parking available. Please bring both light and dark top with you to help splitting the teams at the pitch in case of no bibs", gender: "female", level: "beginner", completed: false)
game_7.user = user_7
game_7.save!

game_8 = Game.new(price: 50.0, game_size: 10 , date: DateTime.now, location: "Stannyfields, Liverpool", description: "Please arrive 10-15mins before. 1-hour slot. Brief intros, team selections and we'll kick-off", gender: "Any", level: "Semi pro", completed: false)
game_8.user = user_8
game_8.save!

game_9 = Game.new(price: 57.0, game_size: 10 , date: DateTime.now, location: "Manchester Communication Academy, Manchester", description: "All-weather 4G artificial grass. Big goals with sidelines. Footwear: Astro-turfs or moulds recommended. Guarantee a full refund as credit in your wallet when you honour the game's refund policy(check before booking)", gender: "Male", level: "Pro", completed: false)
game_9.user = user_9
game_9.save!

game_10 = Game.new(price: 59.15, game_size: 10 , date: DateTime.now, location: "Horfield Leisure, Bristol", description: "Game on!!✔️🔥 Let's make sure that we arrive early with both dark and light coloured tops, so we can sort teams out quickly and make the most of our playing time!Any new players, just ask forr FootyHub and you will be pointed in the right direction. if you can no longer attend the game, you must vacate your spot by clicking leave game. Enjoy!", gender: "Any", level: "Intermediate", completed: false)
game_10.user = user_10
game_10.save!
puts "Games created!"
