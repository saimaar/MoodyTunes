class User < ActiveRecord::Base
  # add associatons!
  has_many :favsongs
  has_many :songs, through: :favsongs 
  
end
