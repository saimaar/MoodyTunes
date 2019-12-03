class Favsong < ActiveRecord::Base
  # add associatons!
  belongs_to :user

  # This give us access to favsong.song.songname. 
  belongs_to :song
end


