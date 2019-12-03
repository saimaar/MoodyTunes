require 'pry'
class MoodyTune

    # Read user instances. 
    attr_reader :user
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  def run
    welcome
    # login_or_signup
    # wanna_see_favs?
    # get_joke(what_subject)
  end

  private # Only getting called inside this class.

  def welcome
      puts 'Welcome to MoodyTune!!!'
  end 

  def login_signup
      puts 'What is your name?'
      username = gets.chomp.downcase 
      # What is @user. 
      @user = User.find_or_create_by(username: username)
      puts "Hello #{@user.username}"

      binding.pry
      # puts '\n'
      # puts "Hey #{@user.answer}, please pick your mood: "
      # # sleep(1)
      # # puts 'Please pick your mood: '
  end 
end
