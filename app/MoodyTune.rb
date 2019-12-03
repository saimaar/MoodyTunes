require 'pry'

class MoodyTune
    # This is just reading @user in this class. 
    attr_reader :user
  # here will be your CLI!
  # it is not an AR class so you need to add attr



  def run
    welcome
    login_signup
    see_fav
 
    # get_joke(what_subject)
  end
  
  private # Only getting called inside this class.

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
 
  def see_fav
      puts 'Would you like to see your favourite songs?'
      input = gets.chomp
      if input.downcase == 'yes'
          
        # This loops through the favsongs, and match favsong's user_id to @user.id(user class).
        fav_songs = Favsong.all.select do |favsong|
            # Returns favsong instances matching the user.
              favsong.user_id == @user.id 
        end 
         binding.pry
        fav_songs.map do |favsong|
          # In order to get the songname, we need to go into the 
          puts favsong.song.songname
        end 

      end 
  end

end
