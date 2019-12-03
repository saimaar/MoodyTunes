class Song < ActiveRecord::Base
# add associatons!
has_many :favsongs
has_many :users, through: :favsongs

end


