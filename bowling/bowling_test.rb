require 'minitest/autorun'
require './bowling'
require 'pry'

class BowlingTest < Minitest::Test

  def test_rolls_gutter_balls
    bowling = Bowling.new
    20.times do
      bowling.roll(0)
    end
    assert_equal 0, bowling.score
  end

  def test_rolls_all_ones
    bowling = Bowling.new
    20.times do
      bowling.roll(1)
    end
    assert_equal 20, bowling.score
  end

  def test_strike_with_two_ones
    bowling = Bowling.new
    bowling.roll(10)
    2.times do
      bowling.roll(1)
    end
    assert_equal 14, bowling.score
  end

  def test_perfect_game
    bowling = Bowling.new
    12.times do
      bowling.roll(10)
    end
    assert_equal 300, bowling.score
  end

  def test_spare
    bowling = Bowling.new
    bowling.roll(5)
    bowling.roll(5)
    bowling.roll(5)
    assert_equal 20, bowling.score

  end

end
