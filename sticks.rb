class Sticks
attr_accessor :total_stick_count, :player_sticks_taken

  def initialize(total_stick_count, player_sticks_taken)
    @total_stick_count = total_stick_count
    @player_sticks_taken = player_sticks_taken
    @sticks_taken = {
      "1" => 1,
      "2" => 2,
      "3" => 3
    }
  end

  def validating_initial_sticks(total_stick_count)
    valid_initial_sticks = (10..100)
    if valid_initial_sticks.include? total_stick_count
      @total_stick_count = total_stick_count
      return total_stick_count
    else
      return false
    end
  end

  def subtracting_sticks(player_one_stick_choice)

  end

end
