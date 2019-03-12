class CreateAvatars < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars do |t|
      t.integer :u_id
      t.integer :user_id
      t.timestamps
    end
    add_index :avatars, :user_id
  end
end
