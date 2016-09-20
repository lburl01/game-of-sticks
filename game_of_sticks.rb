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
  puts "How many sticks are on the table initially (10-100)? > "
  loop do
    initial_stick_input = gets.chomp.to_i
    initial_sticks = Sticks.new(initial_stick_input, 0)
    initial_sticks = initial_sticks.validating_initial_sticks(initial_sticks.total_stick_count)
    if initial_sticks == false
      puts "Try entering a number between 10 and 100 > "
    else
      break
    end
  end

  
end

if __FILE__ == $PROGRAM_NAME
  main
end
