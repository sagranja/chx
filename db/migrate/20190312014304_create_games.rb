class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :u_id
      t.string :name
      t.integer :white_player
      t.integer :black_player
      t.timestamps
    end
    add_index :games, :u_id
  end
end
