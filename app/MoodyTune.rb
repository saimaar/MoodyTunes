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
    welcome
    login_signup
    see_fav
 
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
 
  def see_fav


      puts 'Would you like to see your favourite songs?'
      input = gets.chomp

      if input.downcase == 'yes'
        sleep(1)
        puts "\n"
        puts 'Here are your favourite songs:'

         fav_songs = fav_songs_instances    
        # binding.pry
          fav_songs.map do |favsong|
           # In order to get the songname, we need to go into the       
           puts favsong.song.songname
          # puts favsong.song.artist # Try to add artists here.
          end 

      elsif input.downcase == "no"
          # Shows songs according to mood. 
          show_songs_by_mood
          
        end 
      end 
  end

def show_songs_by_mood

  moods = ['Happy😊', 'Sad🥺', 'Excited🤪', 'Chill😏', 'Romantic🥰']

  



  user_input = prompt.select("What is your mood?",moods)
  puts user_input
 

end 

