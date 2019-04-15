require 'rails_helper'

RSpec.describe Game, type: :model do

  describe "populate_game" do

    it "should populate pieces onto board correctly" do
      game = FactoryBot.create(:game)
      expect(game.pieces.find_by(position_x: 0, position_y: 1, color: true)).to be_kind_of(Pawn)
      expect(game.pieces.find_by(position_x: 2, position_y: 7, color: false)).to be_kind_of(Bishop)
      expect(game.pieces.find_by(position_x: 4, position_y: 0, color: true)).to be_kind_of(King)
      expect(game.pieces.find_by(position_x: 3, position_y: 7, color: false)).to be_kind_of(Queen)
    end

    it "should hold correct number of pieces" do
      game = FactoryBot.create(:game)
      expect(game.pieces.where(type: "Pawn").count).to eq(16)
      expect(game.pieces.where(type: "Knight").count).to eq(4)
      expect(game.pieces.where(type: "Rook").count).to eq(4)
      expect(game.pieces.where(type: "Bishop").count).to eq(4)
      expect(game.pieces.where(type: "King").count).to eq(2)
      expect(game.pieces.where(type: "Queen").count).to eq(2)
      expect(game.pieces.where(color: "f").count).to eq(16)
      expect(game.pieces.where(color: "t").count).to eq(16)
    end
  end
end
