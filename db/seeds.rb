Song.destroy_all
User.destroy_all


# Need to access user1,2 by caling User.all.first/last/position.
#in order to access instances use Class and it's methods.
user1 = User.create(username: 'Saima')
user2 = User.create(username: 'Rex')

song1 = Song.create(songname: 'You Are Beautiful',artist:'James',mood:'Chill',url:'https://www.youtube.com/watch?v=oofSnsGkops',duration:'3:22')
song2 = Song.create(songname: 'South Side',artist:'DjSnake',mood:'Excited',url:'https://www.youtube.com/watch?v=43NIgVtixmc',duration:'3:22')
song3 = Song.create(songname: 'Dream On',artist:'Aerosmith',mood:'Excited',url:'https://www.youtube.com/watch?v=sZfZ8uWaOFI',duration:'3:22')
song4 = Song.create(songname: 'Cinema',artist:'Skrillex',mood:'Excited',url:'https://www.youtube.com/watch?v=QQcQDbpDH_o',duration:'3:22')
song5 = Song.create(songname: 'Let You Go',artist:'Illenium',mood:'Sad',url:'https://www.youtube.com/watch?v=oofSnsGkops',duration:'3:22')

favsong1 = Favsong.create(user_id: user1.id, song_id: song3.id)
