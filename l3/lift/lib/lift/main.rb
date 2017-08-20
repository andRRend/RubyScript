require_relative 'engine'
require_relative 'validator'

module Lift
  class Main
    include Validator

    def initialize
      @weight = 0
      @engine = Engine.new # Composition
    end

    def move floor
      @engine.floor = floor

      if valid? :floor_range, :floor_current, :weight
        @engine.move floor # Delegate pattern
      else
        puts @error
      end
    end

    def load! weight
      @weight += weight
    end

    def release! weight
      @weight -= weight
    end

  end
end
