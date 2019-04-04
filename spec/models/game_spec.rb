require 'rails_helper'

RSpec.describe Game, type: :model do

  describe "populate_game" do

    it "should populate pieces onto board correctly" do
      game = FactoryBot.create(:game)
      byebug
      expect(game.pieces.find_by(position_x: 0, position_y: 1, color: "t")).to be_kind_of(Pawn)
      expect(game.pieces.where(type: "Pawn").count).to eq(16)
    end
  end
end
