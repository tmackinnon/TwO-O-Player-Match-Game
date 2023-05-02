# Plan

## Nouns
Game Class
  - State (instance variables):
    - state of the game (completed or not)
    - who's turn it is (player 1 or 2) 
  - Methods:
    - initialize
      @completed = false
      @players = [Player.new("Player 1"), Player.new("Player 2")]
      @current_player = @players[0]
    - start_game 
      while loop - as long as noone is dead
      check if dead // if true -> @completed true
      otherwise new turn (call turn method)
    - turn
      determine who current player is
      players guess - Question.new
      update current_player

Player
  attr.reader :lives
  - State (instance variables):
    - lives
    - name
  - Methods:
    - initialize(name) 
      @name = name
      @lives = 3
    - lose_a_life
      @lives - 1
    - dead?
      returns true or false

Question:
  - State (instance variables): 
    - numbers for the questions
    - what the answer is
  - Methods:
    - initialize
      @num1 = //randomize num1
      @num2 = // randomize num2
      @answer = @num1 + @num2
    - display_question 
      display string with question
    - check_answer(players_guess)
      compare @answer with players_guess
