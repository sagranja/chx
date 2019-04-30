require 'rails_helper'

RSpec.describe Piece, type: :model do
  
    it "should fail if target is same color" do
      board = FactoryBot.create(:game)
      king = board.pieces.find_by(position_x: 4,position_y: 0)
      knight = board.pieces.find_by(position_x:6, position_y: 0)
      knight.update_attributes(position_x: 2, position_y: 3)
      king.update_attributes(position_x: 2, position_y: 2)
      expect(king.move_to!(2, 3)).to be false 
    end

    it "should update attributes and capture target" do
      board = FactoryBot.create(:game)
      king = board.pieces.find_by(position_x: 4,position_y: 0)
      pawn = board.pieces.find_by(position_x: 1, position_y: 6)
      king.update_attributes(position_x: 2, position_y: 2)
      pawn.update_attributes(position_x: 2, position_y: 3)
      pawn.move_to!(2, 2)
      expect(pawn.position_x).to eq(2)
      expect(pawn.position_y).to eq(2)
      expect(king.position_x).to be_nil
      expect(king.position_y).to be_nil
    end  
end
