class Sticks
  attr_reader :total_stick_count, :player_sticks_taken

  def initialize(total_stick_count, player_sticks_taken, last_player)
    @total_stick_count = total_stick_count
    @player_sticks_taken = player_sticks_taken
    @sticks_taken = {
      "1" => 1,
      "2" => 2,
      "3" => 3
    }
    @last_player = last_player
  end

  def Sticks.get_initial_stick_count
    valid_initial_sticks = (10..100)
    initial_stick_input = 0

    puts "How many sticks are on the table initially (10-100)?"

    loop do
      print " > "
      initial_stick_input = gets.chomp.to_i

      if valid_initial_sticks.include? initial_stick_input
        break
      else
        puts "Try entering a number between 10 and 100 > "
      end

    end

    return initial_stick_input
  end

  def get_player_one_choice
    puts "Player One, how many sticks are you picking up (1-3)?"
    @last_player = "Player One"
    loop do
      player_one_sticks = gets.chomp

      if @sticks_taken.has_key? player_one_sticks
        @player_sticks_taken = @sticks_taken[player_one_sticks]
        break
      else
        puts "You can't do that, try choosing a number between 1-3. > "
      end

    end
  end

  def get_player_two_choice
    puts "Player Two, how many sticks are you picking up (1-3)?"
    @last_player = "Player Two"
    loop do
      player_two_sticks = gets.chomp

      if @sticks_taken.has_key? player_two_sticks
        @player_sticks_taken = @sticks_taken[player_two_sticks]
        break
      else
        puts "You can't do that, try choosing a number between 1-3. > "
      end

    end
  end

  def subtract_player_sticks()
    while @total_stick_count > 0
      @total_stick_count = @total_stick_count - @player_sticks_taken
      return @total_stick_count
    end
  end

  def print_total_stick_count
    if @total_stick_count >= 1
      puts "There are #{@total_stick_count} sticks on the table."
    else
      if @last_player == "Player One"
        puts "Congrats, Player Two! You're the winner."
      elsif @last_player == "Player Two"
        puts "Congrats, Player One! You're the winner."
      end
    end
  end

end
