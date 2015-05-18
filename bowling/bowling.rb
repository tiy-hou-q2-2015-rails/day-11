class Bowling

  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end


  def score
    total = 0

    is_first_in_frame = true

    # loop over all the pins
    @rolls.each_with_index do |roll, index|

      if strike?(roll)
        break if index >= 10 # bonus for the strike on 10
        this_roll = roll
        next_roll = @rolls[index + 1].to_i
        two_rolls = @rolls[index + 2].to_i

        total = total + this_roll + next_roll + two_rolls
        is_first_in_frame = true

      elsif spare?(is_first_in_frame, index)
        total = 10 + @rolls[index + 1].to_i
        is_first_in_frame = true
      else
        # else, add number of pins to score
        total = total + roll
        is_first_in_frame = !is_first_in_frame

      end
    end

    total


  end

  def strike?(roll)
    roll == 10
  end

  def spare?(is_first_in_frame, index)
    last_roll = @rolls[index - 1].to_i
    this_roll = @rolls[index].to_i

    if is_first_in_frame
      false
    else
      last_roll + this_roll == 10
    end
  end

end
