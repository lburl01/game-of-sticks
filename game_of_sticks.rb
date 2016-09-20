# Welcome to the Game of Sticks!
# How many sticks are there on the table initially (10-100)? 500
# Please enter a number between 10 and 100.
# How many sticks are there on the table initially (10-100)? 3
# Please enter a number between 10 and 100.
# How many sticks are there on the table initially (10-100)? 50
#
# There are 50 sticks on the board.
# Player 1: How many sticks do you take (1-3)? 3
#
# There are 47 sticks on the board.
# Player 2: How many sticks do you take (1-3)? 55
# Please enter a number between 1 and 3
# Player 2: How many sticks do you take (1-3)? 3
#
# There are 44 sticks on the board.
# Player 1: How many sticks do you take (1-3)? 3
# ...
#
# There is 1 stick on the board.
# Player 1: How many sticks do you take (1-3)? 1
# Player 1, you lose.
# -----------------------------
# Decide on the data structure(s) that you are going to need to use to represent the state of the game when played.
# Decide on the tasks that will be part of the game loop.
# Get each function working.
# Write a main() function with a game loop that uses your already tested and developed functionality in conjunction with getting user input and printing output.
# -----------------------------

require_relative "sticks.rb"

def main
  puts "Welcome to the Game of Sticks!"

  initial_stick_input = Sticks.get_initial_stick_count

  sticks = Sticks.new(initial_stick_input, 0, 0)

  puts "There are #{sticks.total_stick_count} sticks on the table."

  while sticks.total_stick_count != 0
    player_one_choice = sticks.get_player_one_choice

    after_player_one_removes = sticks.subtract_player_sticks

    player_one_count_update = sticks.print_total_stick_count

    player_two_choice = sticks.get_player_two_choice

    after_player_two_removes = sticks.subtract_player_sticks

    player_two_count_update = sticks.print_total_stick_count
  end

end

if __FILE__ == $PROGRAM_NAME
  main
end
