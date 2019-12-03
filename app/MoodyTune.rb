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
      puts 'Welcome to MoodyTune!!! Please pick your mood: '
      
  end 

  
end
