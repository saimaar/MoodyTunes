class Favsong < ActiveRecord::Base
  # add associatons!
  belongs_to :user
  belongs_to :song
  
end
