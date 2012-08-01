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
  if a <= 0 && b <= 0 && c <= 0
    raise TriangleError, "Can't have a triangle with 0 or smaller length sides"
  end

  if a + b <= c
    raise TriangleError, "C is larger than sides A and B together"
  elsif a + c <= b
    raise TriangleError, "B is larger than sides A and C together"
  elsif b + c <= a
    raise TriangleError, "A is larger than sides B and C together"
  end

  if a == b && b == c
    return :equilateral
  elsif a == b ||  a == c || b == c
    return :isosceles
  elsif (a != b) && (a != c) && (b != c)
    return :scalene
  else
   return :unknown
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
