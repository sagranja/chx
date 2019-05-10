require 'rails_helper'

RSpec.describe Piece, type: :model do
  let(:board) { FactoryBot.create(:game) }
  let(:king) { board.pieces.find_by(type: "King", color: "t") }

  context "when the pieces are the same color" do
    let(:knight) { board.pieces.find_by(position_x: 6, position_y: 0) }

    it "won't be successful" do
      knight.update_attributes(position_x: 2, position_y: 3)
      king.update_attributes(position_x: 2, position_y: 2)
      expect(king.move_to!(2, 3)).to be false
    end
  end

  context "when the pieces are different colors" do
    let(:pawn) { board.pieces.where(type: "Pawn", color: "f").first }

    it "should update target attributes and capture target" do
      king.update(position_x: 2, position_y: 2)
      pawn.update(position_x: 2, position_y: 3)
      pawn.move_to!(2, 2)
      expect(pawn.position_x).to eq(2)
      expect(pawn.position_y).to eq(2)
      expect(king.position_y).to be_nil
      expect(king.position_x).to be_nil
    end
  end

  def king
    board.pieces.find_by(type: "King", color: "t")
  end
end
