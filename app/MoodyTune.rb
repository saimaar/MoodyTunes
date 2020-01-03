require 'pry'
require "tty-prompt"
require 'colorize'
require 'colorized_string'
require 'tty-font'
require 'figlet'
class MoodyTune
    attr_reader :user
    attr_accessor :prompt


    def initialize()
      @prompt = TTY::Prompt.new(symbols: {marker: '⬢'})

  # This is just reading @user in this class.
  # here will be your CLI!
  # it is not an AR class so you need to add attr
    end
#---------------------------RUN METHOD --------------------------------------#
#begin and rescue method is preventing any ruby exceptions
  def run
     begin
    pid = fork{ exec "killall", "afplay" }
      welcome
      show_favrouite_songs
    rescue
      update_list
    end
  end
#------------------------PRIVATE----------------------------------------------#
  private # Only getting called inside this class.
#------------------------Welcome_media----------------------------------------------#

# def welcome_media
#   puts 'ffff'
#   pid = fork{ exec 'afplay', "musics/#{"Welcome"}.mp3"}
#   Welcome_media.go
# end



  def welcome_media2
    puts "
                                     ▄▄       ▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄   ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄  ▄▄        ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄
                                    ▐░░▌     ▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░▌      ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
                                    ▐░▌░▌   ▐░▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀ ▐░▌       ▐░▌▐░▌░▌     ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀
                                    ▐░▌▐░▌ ▐░▌▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌     ▐░▌       ▐░▌▐░▌▐░▌    ▐░▌▐░▌          ▐░▌
                                    ▐░▌ ▐░▐░▌ ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░▌       ▐░▌▐░▌ ▐░▌   ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄
                                    ▐░▌  ▐░▌  ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌     ▐░▌     ▐░▌       ▐░▌▐░▌  ▐░▌  ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
                                    ▐░▌   ▀   ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀      ▐░▌     ▐░▌       ▐░▌▐░▌   ▐░▌ ▐░▌▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀█░▌
                                    ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌          ▐░▌     ▐░▌       ▐░▌▐░▌    ▐░▌▐░▌▐░▌                    ▐░▌
                                    ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌          ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░▌     ▐░▐░▌▐░█▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄█░▌
                                    ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌      ▐░▌          ▐░▌     ▐░░░░░░░░░░░▌▐░▌      ▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
                                     ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀        ▀            ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀ ".colorize(:red)
  end

#------------------------Welcome Message ---------------------------------------
  def clear_screen
    system "clear"
    welcome_media2
  end

  def welcome
      welcome_promp = TTY::Prompt.new(symbols: {marker: '⬢'})
      system "clear"
      pid = fork{ exec 'afplay', "musics/#{"Welcome"}.mp3"}
      Welcome_media.go
      system "echo Welcome to MoodyTune!!! | lolcat -a -d 10"
      system "echo Full of music that will fit your mood. | lolcat -a -d 10"
      sleep(1)
      login_choice = welcome_promp.select("Login or change username:", ["Sign Up / Login","Change Username"], active_color: :red, help_color: :red)
      if login_choice == "Sign Up / Login"
              login
      else
        system "echo What is your name | lolcat -a -d 10"
        username = gets.chomp
        @user = User.find_or_create_by(username: username.downcase)
        update_username
      end
  end
#------------------------Login CREATE-------------------------------------------------
  def login
      system "echo What is your name? | lolcat -a -d 10"
      username = gets.chomp.downcase
      sleep(1.5)
      system "clear"
      welcome_media2
      # we use @user so we can use this variable in other methods outside of this scope..
      @user = User.find_or_create_by(username: username.downcase)
      system "echo Hello #{@user.username.capitalize} !!!! | lolcat -a -d 10"
      sleep(2.5)
      system "clear"
      welcome_media2
  end
    #------------------------Update Username-------------------------------------------------

  def update_username
      system "echo What would you change your username to ? | lolcat -a -d 10"
      update_username = gets.chomp
      @user.update(username: update_username)
      system 'echo Your username has been updated.| lolcat -a -d 10'
      sleep(1)
      system "clear"
      welcome_media2
      update_list
  end
  def fav_songs_instances
        # This loops through the favsongs, and match favsong's user_id to @user.id(user class).
        fav_songs = Favsong.all.select do |favsong|
          # Returns favsong instances matching the user.
            favsong.user_id == @user.id
      end
  end
#--------------------------------Ask For Mood choice --------------------------#
  def ask_mood_and_show_songs
    moods = ['Happy', 'Sad', 'Excited', 'Chill']
    mood_choice = prompt.select("What is your mood today?",moods, active_color: :red, help_color: :red)
    matching_songs = Song.all.select do |each_song|
           each_song.mood.downcase == mood_choice.downcase
     end
    matching_songnames_artists =
        matching_songs.map do |song|
        # Returns song name and artist name.
        "#{song.songname} by #{song.artist}."
    end
    display_songs_and_choose(matching_songnames_artists)
end  # End of ask_mood_and_show_songs



#----------------------------Print Fav songs-------------------------------------#
def print_fav_songs
  puts 'Here are your favourite songs:'.colorize(:green)
  favourites = fav_songs_instances.each_with_index do |favsong, i|
    puts "#{i + 1}. #{favsong.song.songname.colorize(:red)} by #{favsong.song.artist} "
    sleep(0.2)
  end # loop ends
end


#---------------------------------Display and choose-------------------------------#
def display_songs_and_choose(songs)
  choose_prompt = TTY::Prompt.new(symbols: {marker: '⬢'})
  sleep(1)
  clear_screen
  song_choices = choose_prompt.multi_select("Here are the songs matching your mood, please choose songs:",songs, active_color: :red, help_color: :red)
  clear_screen
  song_to_play = choose_prompt.select("Which one do you want to listen to? ", song_choices, active_color: :red, help_color: :red)
  clear_screen
  play_music(song_to_play)
  add_to_fav_list(song_to_play)
  sleep(1)
  clear_screen
  update_list
  system "clear"
end # End of method
#----------------------Show fav song--------------------------------#

def show_favrouite_songs

      fav_songs = fav_songs_instances
      system 'echo Would you like to see your favourite songs? | lolcat -a -d 10'
      input = gets.chomp
      sleep(1)
      clear_screen
      if input.downcase == 'yes'
        sleep(1)
        # If favrouite is empty , puts sorry message.
         if fav_songs.empty?
            system "echo Sorry, your favourite list is empty. | lolcat -a -d 10"
            system "echo Lets add songs to the list. | lolcat -a -d 10"
            sleep(2.5)
            ask_mood_and_show_songs
         else
        # If favrouite list is not empty, puts fav songs.
        #prompt message "1. ADD SONGS 2. DELETE SONGS"

          puts 'Here are your favourite songs:'.colorize(:green)
          fav_songs.each_with_index do |favsong, i|
            # We have the fav_song instances, so we do favsong.song.songname to obtain the songname, as well as the artist.
            puts " #{i + 1}. #{favsong.song.songname.colorize(:red)} by #{favsong.song.artist}"
            sleep(0.5)
          end # loop ends
            puts "\n"
            update_list
        end
      elsif input.downcase == 'no'
        ask_mood_and_show_songs
      else
          puts 'Invalid input, please enter Yes or No.'.colorize(:green)
          show_favrouite_songs
          clear_screen
    end
end

#---------------------------------Adds to Favorite list---------------------------------
def add_to_fav_list(song_to_play)
    # Need to only match the one the user listened to.
    # Loop through songs, find it by the song that the user listened to.
    # And then created an favsong instance by user_id and song_id.
  song_to_play = song_to_play.split(' by ') # To seperate songname and artist.
  song_to_play = song_to_play.first.split('!') # To convert it into an array in order to use each.
  prompt_yes_no = prompt.select("Do you want to add the song to favourite list?", ["Yes", "No"], active_color: :red, help_color: :red)
    if prompt_yes_no.downcase == 'yes'.downcase
        song_to_play.each do |song|
          song_id = Song.find_by(songname:song_to_play).id
              Favsong.create(user_id: @user.id, song_id: song_id)

          end
      clear_screen
      print_fav_songs
      sleep(2)

    else
          sleep(2)
          clear_screen
          update_list
          print_fav_songs

    end
    sleep(2)
    system "echo You have added your songs successfully! | lolcat -a -d 10"
end # End of method

#------------------------------PLAY Music -------------------------------#
def play_music(song)
  # Takes in user's choice of music to be played.
  pastel = Pastel.new
  font = TTY::Font.new
  # To split songname and artist, then obtain the songname.
  song_to_play = song.split(" by ").first
  pid = fork{ exec 'afplay', "musics/#{song_to_play}.mp3"}
  # Display colored text while song is playing.
  sleep(1)
  puts "Playing '#{song_to_play}' for you!!!".colorize(:yellow)
  sleep(2)
  puts "\n"
  puts pastel.on_red(font.write("Enjoy"))
  sleep(2)
  puts pastel.on_yellow(font.write("Your "))
  sleep(2)
  puts pastel.on_cyan(font.write("Music "))
  sleep(2)
  puts pastel.on_magenta(font.write("      !!!        "))

  # Find duration of song, so we can pause terminal for that duration while song is playing:
  song_choice_instance = Song.all.find do |song|
                          song.songname == song_to_play
                        end
  # Get the duration attribute of the song and convert it to int.
  song_duration = song_choice_instance.duration.to_i
  sleep_time = song_duration - 5
  sleep(sleep_time)
end
end

#------------------------------DELETE SONG --------------------------------------------------------------#
def delete_song
  delete_prompt = TTY::Prompt.new(symbols: {marker: '⬢'})
  selected_song_idx = delete_prompt.select('Select a song to delete. Scroll down to see the whole list!') do |song_list|
    song_list.enum '.'
    fav_songs_instances.each_with_index do |fav_song, i|
      song_list.choice fav_song.song.songname, i
    end
  end
  selected_id = fav_songs_instances[selected_song_idx].id
  Favsong.delete(selected_id)
end # end of delete method

#--------------------------UPDATE LIST OF SONDS --------------------------------------------------------

def update_list
  begin
    add_delete_prompt = TTY::Prompt.new(symbols: {marker: '⬢'})
    update_choice = add_delete_prompt.select('What do you want to do?', ['Add Songs', 'Delete Songs','Update Username','Exit'], active_color: :red, help_color: :red)
    sleep(2)
    clear_screen

    # welcome_media is the moodyTune animation.
    # welcome_media
    if update_choice.downcase == 'Add Songs'.downcase
      ask_mood_and_show_songs
      sleep(2)
      clear_screen
      # welcome_media
      print_fav_songs
      update_list
    elsif update_choice.downcase == 'Delete Songs'.downcase
      delete_song
      system 'echo Your Song has been deleted successfully!! | lolcat -a -d 10'
      sleep(2)
      clear_screen
      # welcome_media
      print_fav_songs
      update_list

    elsif update_choice.downcase == 'Update Username'.downcase

              update_username

    elsif update_choice.downcase == "exit".downcase
      system "clear"
      pid = fork{ exec 'afplay', "musics/#{"GoodBye"}.mp3"}
      ByeByeMan.go
      exit!
    end
  rescue
    update_list
  end
end
