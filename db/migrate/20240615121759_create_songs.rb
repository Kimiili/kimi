class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :genre
      t.string :singer
      t.text :about
      t.string :movie
      t.integer :user_id
      t.string :image
      t.string :category
      t.string :youtube_url

      t.timestamps
    end
  end
end
