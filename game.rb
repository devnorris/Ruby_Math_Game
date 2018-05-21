require './player.rb'
require './turn_manager.rb'

class Game
  def initialize
    player1 = Player.new('Devon')
    player2 = Player.new('Mitch')

  @players = [player1, player2]
  @turn = TurnManager.new(@players)
end

  def game_over?
    player.lives == 0
  end

def run

end

