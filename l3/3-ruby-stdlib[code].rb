# encoding: utf-8

# Fibonacci sequence
def fib n
  n.zero? || n == 1 ? n : fib(n - 1) + fib(n - 2)
end

# p fib(5)

# Updated Point class from homework to lesson 2
# class Point < Object

#   attr_accessor :x, :y

#   def initialize x, y
#     @x = x
#     @y = y
#   end

#   def to_s
#     super + " Point: (#{@x}; #{@y})"
#   end

#   def inspect
#     "@x=#{@x}; @y=#{@y}"
#   end

#   def assign_coordinates x, y
#     @x = x
#     @y = y
#     self
#   end

#   def + other_point
#     x = @x + other_point.x
#     y = @y + other_point.y
#     Point.new(x, y)
#   end

#   def - other_point
#     Point.new @x - other_point.x, @y - other_point.y
#   end

#   def == other_point
#     @x == other_point.x && @y == other_point.y
#   end

#   def origin?
#     @x.zero? && @y.zero?
#   end

#   def origin!
#     @x = @y = 0
#     self
#   end

# end

# p Point.new(4, 5) - Point.new(-1, 9)
# p Point.new(5, 5) == Point.new(5, 5)
# p Point.new(0, 10).origin?
# point = Point.new(50, 50)
# p point.origin!
# p point.origin?