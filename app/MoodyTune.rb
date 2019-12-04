require 'pry'
require "tty-prompt"
require 'colorize'
require 'colorized_string'

class MoodyTune
    attr_reader :user
    attr_accessor :prompt

    def initialize()
      @prompt = TTY::Prompt.new

  # This is just reading @user in this class. 
  # here will be your CLI!
  # it is not an AR class so you need to add attr
    end

  def run
    # test 
    # ask_mood_and_show_songs
    welcome
    login_signup
    show_favrouite_songs
 
    # get_joke(what_subject)
  end

  private # Only getting called inside this class.

  # def test 
  #    prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))
  # end 
  def welcome
      puts 'Welcome to MoodyTune!!! Full of music that will fit your mood.'
  end 

  def login_signup
      puts 'What is your name?'
      username = gets.chomp.downcase 
      # we use @user so we can use this variable in other methods outside of this scope.. 
      @user = User.find_or_create_by(username: username.downcase)
      puts "Hello #{@user.username}"
  end 

  def fav_songs_instances 
        # This loops through the favsongs, and match favsong's user_id to @user.id(user class).
        fav_songs = Favsong.all.select do |favsong|
          # Returns favsong instances matching the user.
            favsong.user_id == @user.id 
      end 
  end 

  def ask_mood_and_show_songs
    
    moods = ['Happy', 'Sad', 'Excited', 'Chill', 'Romantic']
    mood_choice = prompt.select("What is your mood today?",moods)
    matching_songs = Song.all.select do |each_song|
           each_song.mood.downcase == mood_choice.downcase
           
     end    
      
    matching_songnames_artists =
        matching_songs.map do |song|
        # Returns song name and artist name. 
        "#{song.songname} by #{song.artist}."
    end 
    display_songs(matching_songnames_artists)

 
end  # End of ask_mood_and_show_songs

def display_songs(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end 
    
def show_favrouite_songs
      fav_songs = fav_songs_instances 
      puts 'Would you like to see your favourite songs?'
      input = gets.chomp

      if input.downcase == 'yes' # and fav_songs is empty, puts 'no fav songs.'
        sleep(1)
        puts "\n"
        
        # If favrouite is empty , puts sorry message.
         if fav_songs.empty?
            puts "Sorry, your favourite list is empty. \n Lets add songs to the list."
            ask_mood_and_show_songs

         else 
        # If favrouite list is not empty, puts fav songs.
          puts 'Here are your favourite songs:'
          fav_songs.map do |favsong|
            puts favsong.song.songname
          end 
        end 
      elsif input.downcase == 'no'
        ask_mood_and_show_songs
      else
          puts 'Invalid input, please enter Yes or No.'
          show_favrouite_songs
    end 
end
end 


