class CreateFavsongs < ActiveRecord::Migration[5.2]
  def change
    create_table :favsongs do |t|
        t.integer :user_id
        t.integer :song_id

        t.timestamps
    end 
  end
end
