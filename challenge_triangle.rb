require 'minitest/autorun'

# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
end


class TriangleTest < Minitest::Test


  def test_is_equilateral
    assert_equal :equilateral, triangle(5,5,5)
  end

  def test_is_isosceles
    assert_equal :isosceles, triangle(5,5,7)
  end

  def test_is_scalene
    assert_equal :scalene, triangle(5,6,7)
  end
end

