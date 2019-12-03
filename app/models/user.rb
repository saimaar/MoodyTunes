class User < ActiveRecord::Base
  # add associatons!
  has_many :favsongs # Same attr_accessors
  has_many :songs, through: :favsongs 

end
