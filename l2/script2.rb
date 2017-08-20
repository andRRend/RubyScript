
#2

def Fibonachi n
	# F[0] = 0, F[1] = 1, F[n] = F[n-1] + F[n-2]
	@n = n
	i = 2
	n = 2
	n0 = 0
	n1 = 1
	begin
		res = n0 + n1
		n0 = n1
		n1 = res
		puts "F[#{i}] = #{res}"
		i += 1
	end while i <= @n
end

Fibonachi 10

# 2(2)

def Fibonachi_up n
	if n==0
		return 0
	elsif n==1
		return 1
		else
		Fibonachi_up(n-1)+Fibonachi_up(n-2)
	end
end

puts Fibonachi_up 9

# 3

class Point
	attr_accessor :x, :y

	def initialize x,y
		@x = x
		@y = y
	end

# 3.1

	def vector x, y, z, v
		vx = Math.sqrt(x**2 + y**2)
		vy = Math.sqrt(z**2 + v**2)
		vx - vy
	end

# 3.2

	def equality? x, y, z, v
		if (x == z && y == v)
			true
		else
			false
		end
	end

# 3.3

	def defaultCoordinate? x, y, z, v
		if (@x == x && @y == y) || (@x == z && @y == v)
			true
		else
			false
		end
	end

# 3.4

	def start
		@x = 0
		@y = 0
	end

end

p Point.new(1,2).vector(1,2,3,4)
p Point.new(1,2).equality?(1,2,3,4)
p Point.new(1,2).defaultCoordinate?(1,2,3,4)
p Point.new(1,2).start
	
# 4

class Elevator
	attr_accessor :stage

	def initialize stage
		@stage = stage
	end

	def move stage, weight
		if weight >= 500
				return false
		else
			if stage < @stage
				up stage
			elsif stage > @stage
				down stage
			end
		end
	end

	def up stage
		@stage = stage
	end

	def down stage
		@stage = stage
	end

end

p Elevator.new(1).move(4,400)
