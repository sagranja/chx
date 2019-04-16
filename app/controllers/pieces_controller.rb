class PiecesController < ApplicationController
  def show
    @piece = Piece.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:id])

    x = params[:position_x]
    y = params[:position_y]

    if @piece.valid_move?(x, y)
      @piece.move_to(x, y)
      @piece.capture(x, y)
      @piece.update_attributes(position_x: x, position_y: y)
    else
      # code for invalid move
    end

  end
end