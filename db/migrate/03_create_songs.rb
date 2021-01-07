class CreateSongs < ActiveRecord::Migration[4.2]
#Song belongs to an artist and genre, therefore should have a table
#with artist_id and genre_id respectively
# This table will be the join table because Artist has many genre through songs
# and genre has many artist through songs
    def change
        create_table :songs do |t|
          t.string :name
          t.integer :artist_id
          t.integer :genre_id
        end
      end
end
