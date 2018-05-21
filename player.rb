class Player
  attr_reader :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = 3
  end

  def wrong_answer
    @lives - 1
  end

