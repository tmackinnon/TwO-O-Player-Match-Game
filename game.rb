require './player'
require './question'

class Game
  def initialize
    @completed = false
    @players = [Player.new("Player 1"), Player.new("Player 2")]
    @current_player = @players[0]
  end

  def start_game

    until @players[1].dead? do
      turn
    end

    @completed = true
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "---- GAME OVER ----"
    puts "Goodbye!" 
  end

  def turn
    puts '---- NEW TURN -----'
    question = Question.new
    puts question.display_question(@current_player.name)

    guess = gets.chomp.to_i

    if question.correct?(guess)
      puts "#{@current_player.name}: YES! You are correct"
    elsif
      @current_player.lose_a_life
      puts "#{@current_player.name}: Seriously? No!"
    end

    print "#{@current_player.name}: #{@current_player.lives}/3 vs "

    @players.rotate!
    @current_player = @players[0]

    puts "#{@current_player.name}: #{@current_player.lives}/3"
  end

end


