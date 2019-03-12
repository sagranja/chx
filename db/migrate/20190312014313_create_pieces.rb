class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.integer :u_id
      t.integer :position_x
      t.integer :position_y
      t.string :name
      t.string :color
      t.integer :game_id
      t.integer :user_id
      t.timestamps
    end
    add_index :pieces, :u_id
  end
end
