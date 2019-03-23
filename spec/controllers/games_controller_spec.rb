require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  
  describe "games#show action" do

    it "should successfully show the page if the game is found" do
      game = FactoryBot.create(:game)
      get :show, params: { id: game.id }
      expect(response).to have_http_status(:success)
    end

    it "should return a 404 error if the game is not found" do
      get :show, params: { id: 'NADA' }
      expect(response).to have_http_status(:not_found)
    end
  end

  describe "games#create action" do
    
    it "should successfully create a new game in our database"
      post :create, params: {
        game: {
          name: 'New Game'
          white_player: 1
          black_player: 2
          active: true
        }
      } 
      expect(game.name).to eq("New Game")
      expect(game.active).to eq(true)
    end
  end
end
