Song.destroy_all
User.destroy_all


user1 = User.create(username: 'Saima')
user2 = User.create(username: 'Rex')

song1 = Song.create(songname: 'You Are Beautiful',artist:'James',mood:'Chill',url:'https://www.youtube.com/watch?v=oofSnsGkops',duration:'3:22')
song1 = Song.create(songname: 'South Side',artist:'DjSnake',mood:'Excited',url:'https://www.youtube.com/watch?v=43NIgVtixmc',duration:'3:22')
song1 = Song.create(songname: 'Dream On',artist:'Aerosmith',mood:'Excited',url:'https://www.youtube.com/watch?v=sZfZ8uWaOFI',duration:'3:22')
song1 = Song.create(songname: 'Cinema',artist:'Skrillex',mood:'Excited',url:'https://www.youtube.com/watch?v=QQcQDbpDH_o',duration:'3:22')
song1 = Song.create(songname: 'Let You Go',artist:'Illenium',mood:'Sad',url:'https://www.youtube.com/watch?v=oofSnsGkops',duration:'3:22')
