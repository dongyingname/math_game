class Player

  attr_reader :name, :lives, :num
  attr_writer :num

  def initialize(name)
    @name = name
    @lives = 3
    @num = 0
  end

  def lose_life
    @lives -= 1
  end

end

