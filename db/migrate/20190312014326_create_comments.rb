class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :user_name
      t.integer :game_id
      t.string :text
      t.integer :user_id
      t.timestamps
    end
    add_index :comments, :user_id
  end
end
