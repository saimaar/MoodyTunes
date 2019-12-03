class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
        t.string :songname
        t.string :artist
        t.string :mood
        t.string :url
        t.string :duration

        t.timestamps
    end 
  end
end
