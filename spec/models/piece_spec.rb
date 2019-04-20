require 'rails_helper'

RSpec.describe Piece, type: :model do
  
    it "should fail if target is same color" do
      board = FactoryBot.create(:game)
      board.pieces.delete_all
      king = FactoryBot.create(:king)
      knight = FactoryBot.create(:knight)
      king.move_to!(2, 3)
      expect(move_to!).to be false 
    end

    it "should update attributes and capture target" do
      board = FactoryBot.create(:game)
      board.pieces.delete_all
      king = FactoryBot.create(:king)
      pawn = FactoryBot.create(:pawn)
      pawn.move_to!(2, 2)
      expect(pawn.position_x).to eq(2)
      expect(pawn.position_y).to eq(2)
      expect(king.position_x).to be_nil
      expect(king.position_y).to be_nil
    end  
end
