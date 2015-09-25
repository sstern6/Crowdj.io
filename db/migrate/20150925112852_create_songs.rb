class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.references :user
      t.string :title
      t.string :artwork
      t.string :stream_url
      t.string :artist
      t.string :song_name
      t.timestamps
    end
  end
end
