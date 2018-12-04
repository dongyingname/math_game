class MathGame

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start_game

    this_player = @player1
    other_player = @player2
    puts "this_player lives",this_player.lives
    
    while (this_player.lives > 0 && other_player.lives > 0) do
      puts "-------------------New Turn-------------------------"
      puts "-----------------#{this_player.name}'s Turn---------------------"
      num1 = rand(1..20)
      num2 = rand(1..20)
      this_player.num = num1 + num2
      # puts "this player's number",this_player.num
      puts "#{this_player.name} :what does #{num1} plus #{num2} equal?"
      guess_num = gets.chomp.to_i
      
      if (this_player.num == guess_num)
        puts "#{this_player.name} : Yes! You are right!"
        this_player.lose_life
        # puts "this player's life",this_player.lives
      else 
        puts "#{this_player.name} : Seriously?! No!!"
        other_player.lose_life
        # puts "other player's life",other_player.lives
      end
    
      if this_player == @player1
        this_player = @player2
        other_player = @player1
      elsif this_player == @player2
        this_player = @player1
        other_player = @player2
      end
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      if this_player.lives == 0 || other_player.lives == 0
        puts "------------------Game Over-----------------------"
        puts "Good Bye!!"
      end
    end
  end

end