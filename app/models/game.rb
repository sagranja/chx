class Game < ApplicationRecord
  has_many :pieces
  has_many :users

  after_create :populate_board!


   def populate_board!

    # White Pieces
    (0..7).each do |i|
      Pawn.create(
        game_id: id,
        position_x: i,
        position_y: 1,
        color: true
        )
    end

    Rook.create(game_id: id, position_x: 0, position_y: 0, color: true)
    Rook.create(game_id: id, position_x: 7, position_y: 0, color: true)
    Knight.create(game_id: id, position_x: 1, position_y: 0, color: true)
    Knight.create(game_id: id, position_x: 6, position_y: 0, color: true)
    Bishop.create(game_id: id, position_x: 2, position_y: 0, color: true)
    Bishop.create(game_id: id, position_x: 5, position_y: 0, color: true)
    Queen.create(game_id: id, position_x: 3, position_y: 0, color: true)
    King.create(game_id: id, position_x: 4, position_y: 0, color: true)


    # Black Pieces
    (0..7).each do |i|
      Pawn.create(
        game_id: id,
        position_x: i,
        position_y: 6,
        color: false
        )
    end

    Rook.create(game_id: id, position_x: 0, position_y: 7, color: false)
    Rook.create(game_id: id, position_x: 7, position_y: 7, color: false)
    Knight.create(game_id: id, position_x: 1, position_y: 7, color: false)
    Knight.create(game_id: id, position_x: 6, position_y: 7, color: false)
    Bishop.create(game_id: id, position_x: 2, position_y: 7, color: false)
    Bishop.create(game_id: id, position_x: 5, position_y: 7, color: false)
    Queen.create(game_id: id, position_x: 3, position_y: 7, color: false)
    King.create(game_id: id, position_x: 4, position_y: 7, color: false)

  end

end


