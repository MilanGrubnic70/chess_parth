class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @cols = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
    @rows = (1..8).to_a.reverse.each { |e| e.to_s }
    @moves = @game.moves
  end
end
