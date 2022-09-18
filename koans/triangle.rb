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
  result = nil
  begin
  if a < 1 || b < 1 || c < 1
    raise TriangleError 
  end

  if !( a+b>c && b+c>a && a+c>b )
    raise TriangleError
  end

  count = 0
  if a == b 
    count += 1
  end
  if b == c
    count += 1
  end
  if a == c
    count += 1
  end

  result = case count
  when 0
    :scalene
  when 1
    :isosceles
  else
    :equilateral
  end

  end    
  return result

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
