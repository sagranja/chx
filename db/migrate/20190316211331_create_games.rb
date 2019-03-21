class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :white_player
      t.integer :black_player
      t.timestamps
    end
  end
end
