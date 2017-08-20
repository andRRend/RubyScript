module Lift
  class Engine

    attr_reader :current_floor
    attr_accessor :floor

    def initialize
      @current_floor = 1
    end

    def move floor
      floor > @current_floor ? up(floor) : down(floor)
      set_current_floor! floor
    end


    private

    def up floor
      puts "Moving up..."
      @current_floor.upto(floor) do |i|
        puts "#{i} floor"
      end
    end

    def down floor
      puts "Moving down..."
      @current_floor.downto(floor) do |i|
        puts "#{i} floor"
      end
    end

    def set_current_floor! floor
      @current_floor = floor
    end

  end
end
