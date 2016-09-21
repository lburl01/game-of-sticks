
require_relative "sticks.rb"

def who_is_playing
  get_opponent = gets.chomp
  if get_opponent == "1"
    return 1
  elsif get_opponent == "2"
    return 2
  end
end

def want_to_keep_playing?
  get_choice = gets.chomp.upcase
  if get_choice == "N"
    puts "Thanks for playing!"
    exit
  end
end

def main
  loop do # to play multiple games
    puts "Welcome to the Game of Sticks!"

    initial_stick_input = Sticks.get_initial_stick_count

    sticks = Sticks.new(initial_stick_input, 0)
    # robot_sticks = Sticks.new(sticks.total_stick_count, 0) # why do I not need this?

    puts "There are #{sticks.total_stick_count} sticks on the table."

    puts "Options: "
    puts "Play against a friend (1)"
    puts "Play against the computer (2)"
    print "Which option do you take? "

    opponent_choice = who_is_playing

    while sticks.total_stick_count != 0
      puts "Player One, how many sticks are you picking up (1-3)?"
      player_one_choice = sticks.get_player_choice("Player One", 1)

      after_player_one_removes = sticks.subtract_player_sticks

      player_one_count_update = sticks.print_total_stick_count

      if opponent_choice == 1
        puts "Player Two, how many sticks are you picking up (1-3)?"
        player_two_choice = sticks.get_player_choice("Player Two", 1)

        after_player_two_removes = sticks.subtract_player_sticks

        player_two_count_update = sticks.print_total_stick_count

      elsif opponent_choice == 2

        robot_choice = sticks.get_player_choice("Robot", 2)

        after_robot_removes = sticks.subtract_player_sticks

        robot_count_update = sticks.print_total_stick_count
      end
    end
    puts "Would you like to play again?"
    print " > "
    end_game_or_not = want_to_keep_playing?
    # end loop to keep playing
  end
end

if __FILE__ == $PROGRAM_NAME
  main
end
