# require 'pry'
# require 'tty-prompt'
# require 'colorize'
# require 'colorized_string'
#
# class MoodyTune
#   attr_reader :user
#   attr_accessor :prompt
#   def initialize
#     @prompt = TTY::Prompt.new
#     # This is just reading @user in this class.
#     # here will be your CLI!
#     # it is not an AR class so you need to add attr
#   end
#   def run
#     # test
#     # ask_mood_and_show_songs
#     welcome
#     login_signup
#     show_favrouite_songs
#     # get_joke(what_subject)
#   end
#   private # Only getting called inside this class.
#
#
#   def welcome_media
#     puts "
#  ▄▄       ▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄   ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄  ▄▄        ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄
# ▐░░▌     ▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░▌      ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
# ▐░▌░▌   ▐░▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀ ▐░▌       ▐░▌▐░▌░▌     ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀
# ▐░▌▐░▌ ▐░▌▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌     ▐░▌       ▐░▌▐░▌▐░▌    ▐░▌▐░▌          ▐░▌
# ▐░▌ ▐░▐░▌ ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░▌       ▐░▌▐░▌ ▐░▌   ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄
# ▐░▌  ▐░▌  ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌     ▐░▌     ▐░▌       ▐░▌▐░▌  ▐░▌  ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
# ▐░▌   ▀   ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀      ▐░▌     ▐░▌       ▐░▌▐░▌   ▐░▌ ▐░▌▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀█░▌
# ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌          ▐░▌     ▐░▌       ▐░▌▐░▌    ▐░▌▐░▌▐░▌                    ▐░▌
# ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌          ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░▌     ▐░▐░▌▐░█▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄█░▌
# ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌      ▐░▌          ▐░▌     ▐░░░░░░░░░░░▌▐░▌      ▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
#  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀        ▀            ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀
#                           ".colorize(:cyan)
#   end
#   # def test
#   #    prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))
#   # end
#   def welcome
#     welcome_media
#     system "echo Welcome to MoodyTune!!! | lolcat -a -d 10 "
#     system "echo Full of music that will fit your mood. | lolcat -a -d 10"
#     sleep(5)
#     system 'clear'
#     welcome_media
#   end
#   def login_signup
#     # welcome_media
#     puts 'What is your name?'.colorize(:green)
#     username = gets.chomp.downcase
#     sleep(1.5)
#     system 'clear'
#     welcome_media
#     # we use @user so we can use this variable in other methods outside of this scope..
#     @user = User.find_or_create_by(username: username.downcase)
#     system "echo Hello #{@user.username.capitalize} !!!! | lolcat -a -d 10 "
#     sleep(3)
#     system 'clear'
#     welcome_media
#   end
#   def fav_songs_instances
#     # welcome_media
#     # This loops through the favsongs, and match favsong's user_id to @user.id(user class).
#     fav_songs = Favsong.all.select do |favsong|
#       # Returns favsong instances matching the user.
#       favsong.user_id == @user.id
#     end
#   end
#   def ask_mood_and_show_songs
#     # welcome_media
#     moods = %w[Happy Sad Excited Chill Romantic]
#     mood_choice = prompt.select('What is your mood today?', moods)
#     sleep(2)
#     system 'clear'
#     welcome_media
#     matching_songs = Song.all.select do |each_song|
#       each_song.mood.downcase == mood_choice.downcase
#     end
#     matching_songnames_artists =
#       matching_songs.map do |song|
#         # Returns song name and artist name.
#         "#{song.songname} by #{song.artist}."
#       end
#     display_songs_and_choose(matching_songnames_artists)
#   end # End of ask_mood_and_show_songs
#   def display_songs_and_choose(songs)
#     # welcome_media
#     prompt_songs = TTY::Prompt.new
#     prompt_save = TTY::Prompt.new
#     sleep(1)
#     song_choice = prompt_songs.multi_select('Here are the songs matching your mood, please choose:', songs)
#     # song_choice_array = song_choice.split('!') # It is trying to find '!' to split, if not found then it split the whole sentnce.
#     # test= song_choice_array.split(' by ')
#     prompt_yes_no = prompt_save.select('Do you want to add the songs to favourite list?', %w[Yes No])
#     # needs if else here
#     if prompt_yes_no.downcase == 'yes'.downcase
#       add_to_fav_list(song_choice)
#     else
#       update_list
#     end
#     # ** Try to play the song_choice music.
#   end # End of mhod
#   def add_to_fav_list(song_choice)
#     # welcome_media
#     song_choice.each do |song|
#       song_id = Song.find_by(songname: song.split(' by ').first).id
#       Favsong.create(user_id: @user.id, song_id: song_id)
#     end
#     system 'echo You have added your songs successfully! | lolcat -a -d 10'
#   end # End of method
#   # def print_fav_song
#   #
#   # end
#   def print_fav_songs
#     system 'echo Here are your favourite songs: | lolcat -a -d 10'
#     favourites = fav_songs_instances.each_with_index do |favsong, i|
#       puts " #{i + 1}. #{favsong.song.songname.colorize(:red)} by #{favsong.song.artist}"
#       sleep(0.2)
#       # .colorize(:red)
#     end # loop ends
#   end
#   def show_favrouite_songs
#     # welcome_media
#     fav_songs = fav_songs_instances
#     system 'echo Would you like to see your favourite songs? | lolcat -a -d 10'
#     input = gets.chomp
#     if input.downcase == 'yes' # and fav_songs is empty, puts 'no fav songs.'
#       sleep(1)
#       puts "\n"
#       # If favrouite is empty , puts sorry message.
#       if fav_songs.empty?
#         system "echo Sorry, your favourite list is empty | lolcat -a -d 10"
#         system "Lets add songs to the list. | lolcat -a -d 10"
#         ask_mood_and_show_songs
#       else
#         print_fav_songs
#         # If favrouite list is not empty, puts fav songs.
#         # prompt message "1. ADD SONGS 2. DELETE SONGS"
#         # puts 'Here are your favourite songs:'.colorize(:green)
#         # favourites = fav_songs.each_with_index do |favsong, i|
#         #   puts " #{i + 1}. #{favsong.song.songname.colorize(:red)} by #{favsong.song.artist}"
#         #   sleep(0.2
#         #   )
#         # end # loop ends
#         puts "\n"
#         update_list
#      end
#     elsif input.downcase == 'no'
#       ask_mood_and_show_songs
#     else
#       system 'echo Invalid input, please enter Yes or No. | lolcat -a -d 15'
#       show_favrouite_songs
#   end
#   end
#   def delete_song
#     delete_prompt = TTY::Prompt.new
#     selected_song_idx = prompt.select('Select a song to delete. Scroll down to see the whole list!') do |song_list|
#       song_list.enum '.'
#       fav_songs_instances.each_with_index do |fav_song, i|
#         song_list.choice fav_song.song.songname, i
#       end
#     end
#     selected_id = fav_songs_instances[selected_song_idx].id
#     Favsong.delete(selected_id)
# end # end of delete method
#   def update_list
#     # welcome_media
#     add_delete_prompt = TTY::Prompt.new
#     update_choice = add_delete_prompt.select('What do you want to do?', ['Add Songs', 'Delete Songs', 'Play Songs', 'Exit'])
#     sleep(3)
#     system 'clear'
#     welcome_media
#     if update_choice.downcase == 'Add Songs'.downcase
#       ask_mood_and_show_songs
#       sleep(3)
#       system 'clear'
#       welcome_media
#       print_fav_songs
#       update_list
#     elsif update_choice.downcase == 'Delete Songs'.downcase
#       delete_song
#       system 'echo Your Song has been deleted successfully!! | lolcat -a -f'
#       sleep(3)
#       system 'clear'
#       welcome_media
#       print_fav_songs
#       update_list
#     elsif update_choice.downcase == "exit".downcase
#       sleep(2)
#       system 'clear'
#       puts "GOOD BYE!"
#     end
#   end
# end # end of moody class
