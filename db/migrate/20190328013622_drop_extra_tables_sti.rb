class DropExtraTablesSti < ActiveRecord::Migration[5.2]
  def up
    drop_table :bishops
    drop_table :kings
    drop_table :knights
    drop_table :queens
    drop_table :rooks
    drop_table :pawns
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
