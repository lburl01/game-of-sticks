
require_relative "sticks.rb"

def who_is_playing
  get_opponent = gets.chomp
  if get_opponent == "1"
    return 1
  elsif get_opponent == "2"
    return 2
  end
end

def main
  puts "Welcome to the Game of Sticks!"

  initial_stick_input = Sticks.get_initial_stick_count

  sticks = Sticks.new(initial_stick_input, 0)
  robot_sticks = Sticks.new(sticks.total_stick_count, 0) # stick count after robot removes not updating because of this being set.

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
        puts "Robot removes 1 stick."
        after_robot_removes = sticks.subtract_player_sticks

        robot_count_update = sticks.print_total_stick_count
      end
    end

end

if __FILE__ == $PROGRAM_NAME
  main
end
