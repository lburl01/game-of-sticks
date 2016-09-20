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

  def get_player_one_choice
    puts "Player One, how many sticks are you picking up (1-3)?"
    loop do
      player_one_sticks = gets.chomp
      if @sticks_taken.has_key? player_one_sticks
        pick_up_this_many_sticks = @sticks_taken[player_one_sticks]
        break
      else
        puts "You can't do that, try choosing a number between 1-3. > "
      end
    end
  end

  def subtract_player_sticks

  end

  # stick_count = sticks.validating_initial_sticks(sticks.total_stick_count)

      # until stick_count == 0 # this is not right
      #   puts "There are #{stick_count} sticks on the table."
      #   print "Player 1, how many sticks will you pick up (1-3)? > "
      #
      #   # player_stick_choice = sticks.get_player_stick_choice
      #   player_stick_choice = gets.chomp
      #   player_sticks_choice_validate = sticks.validate_stick_choice(player_stick_choice)
      #
      #   if player_sticks_choice_validate == false
      #     puts "Try entering 1, 2, or 3. > "
      #   end
      # end

  def pick_up_sticks()

  end

end
