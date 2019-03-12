class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :u_id
      t.string :email
      t.string :user_name
      t.timestamps
    end
    add_index :users, :u_id
  end
end
