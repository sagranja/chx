require 'rails_helper'

RSpec.describe Game, type: :model do

  describe "populate_game" do
    game = FactoryBot.create(:game)
    expect(pawn.position_y).to eq(1 || 6)
  end
end
