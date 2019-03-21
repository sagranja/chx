class GamesController < ApplicationController

  def new
    @game = Game.new
  end


  def create
    @game = Game.create(game_params)
    if @game.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def show
    @game = Game.find(params[:id])
  end


  private

  def game_params
      params.require(:game).permit(:name)
  end

end
