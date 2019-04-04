require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  
  describe "games#show action" do

    it "should successfully show the page if the game is found" do
      game = FactoryBot.create(:game)
      get :show, params: { id: game.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "games#create action" do
    
    it "should successfully create a new game" do
      post :create, params: {
        game: {
          name: "New Game", white_player: 1, black_player: 2 
        }
      } 
      expect(response).to have_http_status(:success)
      expect(game.name).to eq("New Game")
    end
  end
end
