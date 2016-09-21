class Sticks
  attr_reader :total_stick_count, :player_sticks_taken

  def initialize(total_stick_count, player_sticks_taken)
    @total_stick_count = total_stick_count
    @player_sticks_taken = player_sticks_taken
    @sticks_taken = {
      "1" => 1,
      "2" => 2,
      "3" => 3
    }
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

  def get_player_choice(which_player, opponent_choice)
    @last_player = which_player

    if opponent_choice == 1
      loop do
        player_sticks_to_remove = gets.chomp

        if @sticks_taken.has_key? player_sticks_to_remove
          @player_sticks_taken = @sticks_taken[player_sticks_to_remove]
          break
        else
          puts "You can't do that. Try choosing 1, 2, or 3. > "
        end
      end
    elsif opponent_choice == 2
      @player_sticks_taken = 1
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
      puts "Sorry, #{@last_player}! You lost."
      exit
    end
  end

end
