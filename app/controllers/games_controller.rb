class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
  end

  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id
    @game.save!
    redirect_to games_path, notice: 'Game succesfully created'
  end

  private
  def game_params
    params.require(:game).permit(:name, :user_id)
  end
end
