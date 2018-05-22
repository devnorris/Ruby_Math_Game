require './player.rb'
require './turn_manager.rb'
require './question.rb'

class Game
  def initialize
    player1 = Player.new('Devon')
    player2 = Player.new('Mitch')

  @players = [player1, player2]
  @turn = TurnManager.new(@players)
end

  def game_over?
    @players.first.dead? || @players.last.dead?
  end

  def summary
    summary = @players.map { |p| p.summary }.join(" vs ")
    summary
  end

  # def question
  # end



  def find_winner
    @players.first
  end

  def run


      while !game_over?
        current_player = @turn.current_player


      question = Question.new
      puts "#{@turn.current_player.name}: #{question.create_question}"
      input = gets.chomp.to_i

      if question.right_answer?(input)
          puts "#{@turn.current_player.name}: Yes! You are so smart!"
      else
          puts "#{@turn.current_player.name}: Ouch! Wrong answer."
          current_player.wrong_answer
      end


      puts summary
      puts "-------- NEW TURN ---------"

      @turn.next_turn

    end

      winner = find_winner
      puts "#{winner.name} wins with a score of #{winner.lives}/3"
      puts "------ GAME OVER ------"

  end

end


