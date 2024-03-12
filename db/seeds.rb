# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'

puts "Cleaning database..."
Chatroom.destroy_all
Review.destroy_all
Player.destroy_all
Game.destroy_all
User.destroy_all
Message.destroy_all

puts "Creating User..."
user_1 = User.create!(first_name: "Tori", last_name: "Evans", email: "test2@test.com", password: "123456", preferred_position: "Offensive", level: "Casual", age: 24 )
user_2 = User.create!(first_name: "Abdul", last_name: "Omar", email: "test1@test.com", password: "123456", preferred_position: "Offensive", level: "Advanced", age: 18 )
user_3 = User.create!(first_name: "Will", last_name: "Neve", email: "test3@test.com", password: "123456", preferred_position: "Defensive", level: "Intermediate", age: 22 )
user_4 = User.create!(first_name: "Jamal", last_name: "Abubakari", email: "test4@test.com", password: "123456", preferred_position: "Offensive", level: "Advanced", age: 35 )
user_5 = User.create!(first_name: "Soukaina", last_name: "Guezour", email: "test5@test.com", password: "123456", preferred_position: "Offensive", level: "Amateur", age: 36 )
user_6 = User.create!(first_name: "Elizabeth", last_name: "Ojambo", email: "test6@test.com", password: "123456", preferred_position: "Offensive", level: "Advanced", age: 27 )
user_7 = User.create!(first_name: "Marco", last_name: "Ricci", email: "test7@test.com", password: "123456", preferred_position: "Defensive", level: "Casual", age: 29 )
user_8 = User.create!(first_name: "Deji", last_name: "Hastrup", email: "test8@test.com", password: "123456", preferred_position: "Offensive", level: "Advanced", age: 23 )
user_9 = User.create!(first_name: "Louise", last_name: "Stone", email: "test9@test.com", password: "123456", preferred_position: "Offensive", level: "Casual", age: 21 )
user_10 = User.create!(first_name: "Cy", last_name: "Porteous", email: "test10@test.com", password: "123456", preferred_position: "Defensive", level: "Intermediate", age: 18 )
user_11 = User.create!(first_name: "Bukayo", last_name: "Saka", email: "test11@test.com", password: "123456", preferred_position: "Defensive", level: "Casual", age: 20 )
user_12 = User.create!(first_name: "Cristiano", last_name: "Ronaldo", email: "test12@test.com", password: "123456", preferred_position: "Offensive", level: "Advanced", age: 25 )
user_13 = User.create!(first_name: "Luiz", last_name: "Suarez", email: "test13@test.com", password: "123456", preferred_position: "Defensive", level: "Intermediate", age: 28 )
user_14 = User.create!(first_name: "Thierry", last_name: "Henry", email: "test14@test.com", password: "123456", preferred_position: "Defensive", level: "Amateur", age: 40 )
user_15 = User.create!(first_name: "Kylian", last_name: "Mbappe", email: "test15@test.com", password: "123456", preferred_position: "Offensive", level: "Casual", age: 23 )
user_16 = User.create!(first_name: "William", last_name: "Saliba", email: "test16@test.com", password: "123456", preferred_position: "Defensive", level: "Intermediate", age: 29 )
user_17 = User.create!(first_name: "Marcelo", last_name: "da Silva", email: "test17@test.com", password: "123456", preferred_position: "Offensive", level: "Amateur", age: 33 )
user_18 = User.create!(first_name: "Martin", last_name: "Odegaard", email: "test18@test.com", password: "123456", preferred_position: "Offensive", level: "Advanced", age: 23 )
user_19 = User.create!(first_name: "David", last_name: "Beckham", email: "test19@test.com", password: "123456", preferred_position: "Defensive", level: "Intermediate", age: 34 )
user_20 = User.create!(first_name: "Trent", last_name: "A-Arnold", email: "test20@test.com", password: "123456", preferred_position: "Offensive", level: "Intermediate", age: 25 )
puts "User created!"

user_avatar11 = URI.open("https://www.coachesvoice.com/wp-content/uploads/2021/09/SakaMobile.jpg")
user_11.photo.attach(io: user_avatar11, filename: 'Saka_pic', content_type: "image/jpeg")
user_11.save!

user_avatar12 = URI.open("https://w0.peakpx.com/wallpaper/259/635/HD-wallpaper-cristiano-ronaldo-closeup-cristiano-ronaldo-closeup-football-sports-cr7.jpg")
user_12.photo.attach(io: user_avatar12, filename: 'Ronaldo_small', content_type: "image/jpeg")
user_12.save!

user_avatar13 = URI.open("https://i.pinimg.com/736x/4d/5e/ab/4d5eab775a2a72a20af5e76044962104.jpg")
user_13.photo.attach(io: user_avatar13, filename: 'Saka_pic', content_type: "image/jpeg")
user_13.save!

user_avatar14 = URI.open("https://s.france24.com/media/display/8484ed96-4042-11ee-b936-005056a90284/w:1280/p:1x1/a874c291314b0b55b36b1ecda08a1d9eff46791b.jpg")
user_14.photo.attach(io: user_avatar14, filename: 'Saka_pic', content_type: "image/jpeg")
user_14.save!

user_avatar15 = URI.open("https://cdn.theathletic.com/cdn-cgi/image/width=1200,height=1200,fit=cover/app/uploads/2023/06/13165232/GettyImages-1247139182-scaled-e1686689605877.jpg")
user_15.photo.attach(io: user_avatar15, filename: 'Saka_pic', content_type: "image/jpeg")
user_15.save!

user_avatar16 = URI.open("https://www.thesun.co.uk/wp-content/uploads/2022/02/NINTCHDBPICT000695891630-1-e1645889426465.jpg?crop=694px%2C43px%2C3981px%2C2656px&resize=620%2C413")
user_16.photo.attach(io: user_avatar16, filename: 'Saka_pic', content_type: "image/jpeg")
user_16.save!

user_avatar17 = URI.open("https://i.pinimg.com/474x/15/0f/22/150f22b1eb29ad12f0e772eb39a0f936.jpg")
user_17.photo.attach(io: user_avatar17, filename: 'Saka_pic', content_type: "image/jpeg")
user_17.save!

user_avatar18 = URI.open("https://i.pinimg.com/736x/0c/b6/36/0cb636d8e7c6a4cb23d82ddf61c157e5.jpg")
user_18.photo.attach(io: user_avatar18, filename: 'Saka_pic', content_type: "image/jpeg")
user_18.save!

user_avatar19 = URI.open("https://imgix.ranker.com/user_node_img/50041/1000800651/original/young-david-beckham-in-soccer-jersey-closeup-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375")
user_19.photo.attach(io: user_avatar19, filename: 'Saka_pic', content_type: "image/jpeg")
user_19.save!

user_avatar20 = URI.open("https://d3j2s6hdd6a7rg.cloudfront.net/v2/uploads/media/default/0001/97/thumb_96317_default_news_size_5.jpeg")
user_20.photo.attach(io: user_avatar20, filename: 'Saka_pic', content_type: "image/jpeg")
user_20.save!

puts "Creating games with chatrooms..."

game_1 = Game.new(price: 7.0, game_size: 5, date: DateTime.parse("2024/03/30/ 13:00"), location: "Colombo Centre, Southwark", description: "All abilities are welcome to join, a mix between regulars and new players, closest station: Southwark, Please arrive 10 mins before KO so you are ready to start on time", gender:"Male", level: "Amatuer", completed: false)
game_1.user = user_1
game_1.save!
Chatroom.create!(game: game_1)

game_2 = Game.new(price: 5.0, game_size: 7, date: DateTime.parse("2024/04/05 13:00"), location: "King Solomon Academy", description: "60mins game, arrive 10-15mins before kick off, no shouting and no aggressive behaviour, Respect Host decision, 4G artificial pitch. AG boots or astro ok. Team colour: Please bring both a light and dark top with you to help splitting the teams at the pitch", gender: "Male", level: " Decent", completed: false)
game_2.user = user_2
player1 = Player.create!(user: user_11, game: game_2)
player2 = Player.create!(user: user_12, game: game_2)
player3 = Player.create!(user: user_13, game: game_2)
player4 = Player.create!(user: user_14, game: game_2)
player5 = Player.create!(user: user_15, game: game_2)
player6 = Player.create!(user: user_16, game: game_2)
player7 = Player.create!(user: user_17, game: game_2)
player8 = Player.create!(user: user_18, game: game_2)
player9 = Player.create!(user: user_19, game: game_2)
player0 = Player.create!(user: user_20, game: game_2)
game_2.save!
Chatroom.create!(game: game_2)

game_3 = Game.new(price: 6.0, game_size: 11, date: DateTime.parse("2024/04/06 13:00"), location: "City of London Academy", description: "This casual and inclusive game is open to players of all skills and abilities, Please come 10 minutes before the kick-off.", gender: "Any", level: "Casual", completed: false)
game_3.user = user_3
game_3.save!
Chatroom.create!(game: game_3)

game_4 = Game.new(price: 5.50, game_size: 9, date: DateTime.parse("2024/04/07 13:00"), location: "Battersea Sports Ground", description: "1 hour game, everyone welcome to join. Battersea Park station: 5min walk, Limited street-parking. Changing Rooms and showers available.", gender: "Male", level: "Advanced", completed: false)
game_4.user = user_4
game_4.save!
Chatroom.create!(game: game_4)

game_5 = Game.new(price: 7.5, game_size: 5, date: DateTime.parse("2024/04/09 13:00"), location: "Powerleague, Shoreditch
", description: "Closest train station is Shoredtch, people who turn up late might lose their spot. 3G artificial grass surface, outdoors, covered pitch. Everyone must play fair, respect their oppenents and fellow players. Fresh bibs will be provided ", gender: "Any", level: "Decent", completed: false)
game_5.user = user_5
game_5.save!
Chatroom.create!(game: game_5)

game_6 = Game.new(price: 6.30, game_size: 7, date: DateTime.parse("2024/04/15 13:00"), location: "Trinity Sports Centre", description: "Come and play a casual footbal game in Central Manchester. We play at Pitch 2 (Middle pitch), we promote a friendly atmosphere - no shouting or aggressive behaviour. If you can't make it, ensure you remove your name from the list ASAP. No spot selling or trading allowed!. All weather 4G artifiacial grass. Big goals with side lines. Footwear: Astro-turfs or moulds recommended, no metal studs or blades. Changing rooms and showers available", gender: "Female", level: "Casual", completed: false)
game_6.user = user_6
game_6.save!
Chatroom.create!(game: game_6)

game_7 = Game.new(price: 6.0, game_size: 9, date: DateTime.parse("2024/04/20 13:00"), location: "Goals Sporta Centres", description: "All abilities are welcome to join. Mix betwwen regulars and new players No metal studs. Shoowers & changing rooms available. Free parking available. Please bring both light and dark top with you to help splitting the teams at the pitch in case of no bibs", gender: "Female", level: "Amatuer", completed: false)
game_7.user = user_7
game_7.save!
Chatroom.create!(game: game_7)

game_8 = Game.new(price: 5.0, game_size: 7, date: DateTime.parse("2024/04/14 13:00"), location: "Stannyfields Pitches", description: "Please arrive 10-15mins before. 1-hour slot. Brief intros, team selections and we'll kick-off", gender: "Any", level: "Advanced", completed: false)
game_8.user = user_8
game_8.save!
Chatroom.create!(game: game_8)

game_9 = Game.new(price: 5.0, game_size: 11, date: DateTime.parse("2024/04/26 13:00"), location: "Manchester Communication Academy", description: "Big goals with sidelines, Come ready to play , by all means argue if you want this is Football 🤷🏾‍♂️ but please understand limitations", gender: "Male", level: "Casual", completed: false)
game_9.user = user_9
game_9.save!
Chatroom.create!(game: game_9)

game_10 = Game.new(price: 5.15, game_size: 7, date: DateTime.parse("2024/04/06 16:00"), location: "Horfield Leisure", description: "Game on!!✔️🔥 Let's make sure that we arrive early with both dark and light coloured tops, so we can sort teams out quickly and make the most of our playing time! Enjoy!", gender: "Any", level: "Decent", completed: false)
game_10.user = user_10
game_10.save!
Chatroom.create!(game: game_10)
puts "Games and chatrooms created!"

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
