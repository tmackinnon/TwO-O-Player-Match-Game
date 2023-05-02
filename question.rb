class Question
  attr_reader :num1, :num2, :answer
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def display_question(player_name)
    "#{player_name}: What does #{@num1} plus #{@num2} equal?"
  end

  def correct?(guess)
    answer_string = @answer.to_s
    guess == answer_string ? true : false
  end

end

# x = Question.new

# puts x.num1
# puts x.num2
# puts x.answer