class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :artist_id, foreign_key: true
      t.integer :instrument_id, foreign_key: true
    end
  end
end
