require 'rails_helper'

RSpec.describe Game, type: :model do

  describe "populate_game" do
    white_player = FactoryBot.create(:user)
    black_player = FactoryBot.create(:user)

    game = Game.create(name: "New Game", white_player: white_player, black_player: black_player)
  end
end
