# Using OOP for modelling housing lift from homework to lesson 2
class Lift

  # OverloadError = Class.new StandardError

  # MAX_WEIGHT = 400

  # attr_reader :current_floor

  # Constructor
  def initialize
    @max_weight = 400
    @current_floor = 1
    @weight = 0
    # check_weight!
  end

  def move floor
    # check_floor! # type and floors range
    return puts("The floor should be an Integer number between 1 and 25") unless floor.instance_of?(Fixnum) && (1..25).cover?(floor)
    return puts("Current weight (#{@weight} kg) is more than allowed (#{@max_weight}) kg. You will stay at the current floor, sorry.") unless allowed_weight?
    return puts("You are already on the #{floor} floor. Choose another floor or get out!") if @current_floor == floor
    if floor > @current_floor
      up floor
    else
      down floor
    end
    set_current_floor! floor
    puts "Stop. You are on the #{@current_floor} floor"
  end

  def release! weight
    @weight -= weight
    # puts "[Release]: Current weight is #{@weight}"
  end

  def load! weight
    @weight += weight
    # puts "[Load]: Current weight is #{@weight}"
  end


  # private

  def allowed_weight?
    @weight <= @max_weight
  end

  # def check_weight!
  #   raise OverloadError, "Current weight is more than allowed 400 kg. You will stay at the current floor, sorry." if @weight > @max_weight
  # end

  def up floor
    puts "Moving up..."
    @current_floor.upto(floor) do |i|
      # sleep 1.2
      puts "#{i} floor"
    end
  end

  def down floor
    puts "Moving down..."
    @current_floor.downto(floor) do |i|
      # sleep 1.2
      puts "#{i} floor"
    end
  end

  def set_current_floor! floor
    @current_floor = floor
  end

end

lift = Lift.new

lift.load! 440
lift.release! 80
lift.move 17
# lift.move 5
