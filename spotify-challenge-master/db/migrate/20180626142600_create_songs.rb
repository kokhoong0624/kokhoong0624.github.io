
class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :songs do |t|
    t.string :song_name
    t.string :status
    t.timestamps
    end
  end
end
